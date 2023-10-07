import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample/core/constants/app_contants.dart';
import 'package:sample/core/init/network/safe_call_extensions.dart';
import 'package:sample/data/repository/movie/movie_repository.dart';
import 'package:sample/view/content/model/auth/movie_auth_failure.dart';

import '../../../core/di/injector_provider.dart';
import '../../../core/init/network/api_result.dart';
import '../model/auth/auth_response_model.dart';
import '../model/movie/movie_list_reponse_model.dart';

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
          indexChanged: (int index) =>
              emit(indexChangedState(true, index: index)),
        );
      },
    );
  }

  Future<void> _onAuthenticateApp(
      Emitter<ContentState> emit, String token) async {
    final isTokenValid = state.token.isNotEmpty;

    if (isTokenValid) {
      final result = await authRepository.authenticateAccount();

      if (result is Success<AuthResponseModel>) {
        final movieReponse = await authRepository.discoverMovies();
        if (movieReponse is Success<MovieListResponseModel>) {
          emit(getSuccessState(true, reponseData: movieReponse.data));
        }
      } else {
        final errorMessage =
            result?.asOrNull<Failed>()?.errors.firstOrNull()?.message ??
                "Something went wrong";
        emit(getFailureState(errorMessage));
      }
    }
  }

  ContentState getSuccessState(bool condition,
      {required MovieListResponseModel reponseData}) {
    return state.copyWith(
      isLoading: false,
      showErrorMessage: false,
      movieResponse: reponseData,
      authFailureOrSuccess: (condition) ? right(unit) : null,
    );
  }

  ContentState indexChangedState(bool condition, {required int index}) {
    return state.copyWith(
      isLoading: false,
      index: index,
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
