import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample/core/init/network/api_result.dart';
import 'package:sample/core/init/network/safe_call_extensions.dart';
import 'package:sample/view/content/model/auth/auth_response_model.dart';
import 'package:sample/view/detail/model/fav_model.dart';
import 'package:sample/view/detail/model/movie_detail_failure.dart';
import 'package:sample/view/detail/model/movie_detail_model.dart';
import 'package:sample/view/fav/blocs/fav_bloc.dart';

import '../../../core/di/injector_provider.dart';
import '../../../data/repository/movie/movie_repository.dart';

part 'detail_event.dart';

part 'detail_state.dart';

part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  MovieRepository movieRepository = inject<MovieRepository>();

  DetailBloc() : super(DetailState.initial()) {
    on<DetailEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          getMovieDetail: (movieID) => _onGetMovieDetail(emit, movieID),
          addToFav: (movieID, isFav) => _onAddToFav(emit, movieID, isFav),
          removeFromFav: (we) => _onRemoveFromFav(emit, we),
        );
      },
    );
  }

  Future<void> _onGetMovieDetail(
      Emitter<DetailState> emit, String movieID) async {
    final isTokenValid = movieID.isNotEmpty;

    if (isTokenValid) {
      final result = await movieRepository.getMovieDetail(movieID);

      if (result is Success<MovieDetailModel>) {
        emit(getSuccessState(true, eitherReponse: Right(result.data)));
      } else {
        final errorMessage =
            result?.asOrNull<Failed>()?.errors.firstOrNull()?.message ??
                "Something went wrong";
        emit(getFailureState(errorMessage));
      }
    } else {
      emit(getFailureState(true));
    }
  }

  Future<void> _onAddToFav(
      Emitter<DetailState> emit, String movieID, bool isFav) async {
    final isTokenValid = movieID.isNotEmpty;

    if (isTokenValid) {
      final result = await movieRepository.addToFav(movieID, isFav);

      if (result is Success<AuthResponseModel>) {
        emit(getFavState(
            true,
            Right(FavModel(
                isAdded: isFav, message: result.data.status_message ?? ''))));
      } else {
        final errorMessage =
            result?.asOrNull<Failed>()?.errors.firstOrNull()?.message ??
                "Something went wrong";
        emit(getFavState(true, const Left(false)));
      }
    } else {
      emit(getFavState(true, const Left(false)));
    }
  }

  Future<void> _onRemoveFromFav(Emitter<DetailState> emit, String token) async {
    final isTokenValid = state.movieID.isNotEmpty;

    if (isTokenValid) {
      final res = await movieRepository.getFavList();

      if (res == true) {
        final movieReponse = await movieRepository.discoverMovies();
        emit(getSuccessState(movieReponse != null));
      }
    } else {
      emit(getFailureState(true));
    }
  }

  DetailState getSuccessState(bool condition,
      {Either<MovieDetailFailure, MovieDetailModel?>? eitherReponse}) {
    return state.copyWith(
        isLoading: false,
        showErrorMessage: false,
        movieDetailFetchSuccessFailure: eitherReponse);
  }

  DetailState getFailureState(bool condition) {
    return state.copyWith(
      isLoading: false,
      showErrorMessage: true,
      movieDetailFetchSuccessFailure: (condition) ? right(null) : null,
    );
  }

  DetailState getFavState(bool condition, Either<bool, FavModel>? favEither) {
    return state.copyWith(
      isLoading: false,
      showErrorMessage: true,
      favSuccessFailure: favEither,
      movieDetailFetchSuccessFailure: (condition) ? right(null) : null,
    );
  }
}
