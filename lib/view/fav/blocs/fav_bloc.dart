import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/di/injector_provider.dart';
import '../../../data/repository/movie/movie_repository.dart';
import '../../content/model/auth/movie_auth_failure.dart';

part 'fav_event.dart';

part 'fav_state.dart';
part 'fav_bloc.freezed.dart';


class FavBloc extends Bloc<FavEvent, FavState> {
  MovieRepository authRepository = inject<MovieRepository>();

  FavBloc() : super( FavState.initial()) {
    on<FavEvent>(
            (event, emit) async {
      await event.when<FutureOr<void>>(
        getFavList: () => _onGetFavList(emit, "AppConstants.token"),
      );
    });
  }


  Future<void> _onGetFavList(Emitter<FavState> emit, String token) async {
    const isTokenValid = true;

    if (isTokenValid) {
      final res = await authRepository.getFavList();

      if (res == true) {
        final movieReponse = await authRepository.discoverMovies();
        emit(getSuccessState(movieReponse != null));
      }
    } else {
      emit(getFailureState(true));
    }
  }

  FavState getSuccessState(bool condition) {
    return state.copyWith(
      isLoading: false,
      showErrorMessage: false,
      authFailureOrSuccess: (condition) ? right(unit) : null,
    );
  }

  FavState getFailureState(bool condition) {
    return state.copyWith(
      isLoading: false,
      showErrorMessage: true,
      authFailureOrSuccess: (condition) ? right(unit) : null,
    );
  }
}
