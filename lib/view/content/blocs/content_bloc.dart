import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample/core/constants/app_contants.dart';
import 'package:sample/data/repository/movie/movie_repository.dart';
import 'package:sample/view/content/model/auth/movie_auth_failure.dart';

import '../../../core/di/injector_provider.dart';

part 'content_bloc.freezed.dart';

part 'content_event.dart';

part 'content_state.dart';

class ContentBloc extends Bloc<ContentEvent, ContentState> {
  MovieRepository authRepository = inject<MovieRepository>();

  ContentBloc() : super(ContentState.initial()) {
    on<ContentEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          authenticateApp: () => _onAuthenticateApp(emit, AppConstants.token),
          getFavList: () => __onGetFavList(emit, "token"),
          addToFav: () => _onAddToFav(emit, "token"),
        );
      },
    );
  }

  Future<void> _onAuthenticateApp(
      Emitter<ContentState> emit, String token) async {
    final isTokenValid = state.token.isNotEmpty;

    if (isTokenValid) {
      final res = await authRepository.authenticateAccount();

      if (res == true) {
        final movieReponse = await authRepository.discoverMovies();
        emit(getSuccessState(movieReponse != null));
      }
    } else {
      emit(getFailureState(true));
    }
  }

  Future<void> __onGetFavList(Emitter<ContentState> emit, String token) async {
    final isTokenValid = state.token.isNotEmpty;

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

  Future<void> _onAddToFav(Emitter<ContentState> emit, String token) async {
    final isTokenValid = state.token.isNotEmpty;

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

  ContentState getSuccessState(bool condition) {
    return state.copyWith(
      isLoading: false,
      showErrorMessage: false,
      authFailureOrSuccess: (condition) ? right(unit) : null,
    );
  }

  ContentState getFailureState(bool condition) {
    return state.copyWith(
      isLoading: false,
      showErrorMessage: true,
      authFailureOrSuccess: (condition) ? right(unit) : null,
    );
  }
}
