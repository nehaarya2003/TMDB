import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/core/init/network/api_result.dart';
import 'package:sample/view/content/model/auth/auth_response_model.dart';

import '../../../core/di/injector_provider.dart';
import '../../../data/repository/auth/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/auth_failure.dart';
import '../model/email_address.dart';
import '../model/password.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthenticationState> {
  AuthRepository authRepository = inject<AuthRepository>();

  AuthBloc() : super(AuthenticationState.initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          emailChanged: (emailString) => _onEmailChanged(emit, emailString),
          passwordChanged: (passwordString) =>
              _onPasswordChanged(emit, passwordString),
          obscurePasswordToggled: () => _onObscurePasswordToggled(emit),
          loginSubmitted: () => _onLoginSubmitted(emit),
        );
      },
    );
  }

  void _onEmailChanged(Emitter<AuthenticationState> emit, String emailString) {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(emailString),
        authFailureOrSuccess: null,
      ),
    );
  }

  void _onPasswordChanged(
      Emitter<AuthenticationState> emit, String passwordString) {
    emit(
      state.copyWith(
        password: Password(passwordString),
        authFailureOrSuccess: null,
      ),
    );
  }

  void _onObscurePasswordToggled(Emitter<AuthenticationState> emit) {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  Future<void> _onLoginSubmitted(Emitter<AuthenticationState> emit) async {
    final isEmailValid = state.emailAddress.value.isRight();
    final isPasswordValid = state.password.value.isRight();

    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: null,
        ),
      );

      final res = await authRepository.loginUser(
          state.emailAddress.value.getOrElse(() => ""),
          state.password.value.getOrElse(() => ""));

      if (res.success == true) {
        emit(getSuccessState(isEmailValid && isPasswordValid,
            response: Right(res)));
      } else {
        final createRes = await _onCreateUserSubmitted(emit);
        emit(getSuccessState(isEmailValid && isPasswordValid,
            response: Right(createRes)));
      }
      emit(getFailureState(isEmailValid && isPasswordValid,
          response:
              const Left(AuthFailure.serverError("Something went wrong"))));
    }
  }

  Future<AuthResponseModel> _onCreateUserSubmitted(
      Emitter<AuthenticationState> emit) async {
    return await authRepository.createUser(
        state.emailAddress.value.getOrElse(() => ""),
        state.password.value.getOrElse(() => ""));
  }

  AuthenticationState getSuccessState(bool condition,
      {required Either<AuthFailure, AuthResponseModel> response}) {
    return state.copyWith(
      isSubmitting: false,
      showErrorMessage: false,
      authFailureOrSuccess: response,
    );
  }

  AuthenticationState getFailureState(bool condition,
      {required Either<AuthFailure, AuthResponseModel> response}) {
    return state.copyWith(
      isSubmitting: false,
      showErrorMessage: true,
      authFailureOrSuccess: response,
    );
  }
}
