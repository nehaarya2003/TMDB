import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample/view/detail/model/movie_detail_failure.dart';

import '../../../core/di/injector_provider.dart';
import '../../../data/repository/movie/movie_repository.dart';

part 'detail_event.dart';

part 'detail_state.dart';
part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  MovieRepository authRepository = inject<MovieRepository>();

  DetailBloc() : super(DetailState.initial()) {
    on<DetailEvent>(
          (event, emit) async {
        await event.when<FutureOr<void>>(
          getMovieDetail: (movieID) => _onGetMovieDetail(emit, movieID),
        );
      },
    );
  }


  Future<void> _onGetMovieDetail(
      Emitter<DetailState> emit, String movieID) async {
    final isTokenValid = state.movieID.isNotEmpty;

    if (isTokenValid) {
      final res = await authRepository.getMovieDetail(movieID);

      if (res == true) {
        final movieReponse = await authRepository.discoverMovies();
        emit(getSuccessState(movieReponse != null));
      }
    } else {
      emit(getFailureState(true));
    }
  }

  DetailState getSuccessState(bool condition) {
    return state.copyWith(
      isLoading: false,
      showErrorMessage: false,
      authFailureOrSuccess: (condition) ? right(unit) : null,
    );
  }

  DetailState getFailureState(bool condition) {
    return state.copyWith(
      isLoading: false,
      showErrorMessage: true,
      authFailureOrSuccess: (condition) ? right(unit) : null,
    );
  }
}
