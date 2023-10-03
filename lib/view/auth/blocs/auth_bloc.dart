import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  void _onPasswordChanged(Emitter<AuthenticationState> emit,
      String passwordString) {
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

      // Perform network request to get a token.

      final res = await authRepository.loginUser(
          state.emailAddress.value.getOrElse(() => ""),
          state.password.value.getOrElse(() => ""));

    //  list.map((e) => User.fromJson(e)).toList();

      
      if (res) {
        emit(
            getSuccessState(isEmailValid && isPasswordValid && res)
        );
      } else {
        final createRes = _onCreateUserSubmitted(emit);
        createRes == true ? emit(getSuccessState(true)) : emit(
            getFailureState(true));
      }
      // await Future.delayed(const Duration(seconds: 1));
    }
    emit(
        getFailureState(isEmailValid && isPasswordValid)
    );
  }

  Future<bool> _onCreateUserSubmitted(Emitter<AuthenticationState> emit) async {
    return await authRepository.createUser(
        state.emailAddress.value.getOrElse(() => ""),
        state.password.value.getOrElse(() => ""));
  }

  AuthenticationState getSuccessState(bool condition) {
    return state.copyWith(
      isSubmitting: false,
      showErrorMessage: false,

// Depending on the response received from the server after loggin in,
// emit proper authFailureOrSuccess.

// For now we will just see if the email and password were valid or not
// and accordingly set authFailureOrSuccess' value.

      authFailureOrSuccess: (condition) ? right(unit) : null,
    );
  }

  AuthenticationState getFailureState(bool condition) {
    return state.copyWith(
      isSubmitting: false,
      showErrorMessage: true,

// Depending on the response received from the server after loggin in,
// emit proper authFailureOrSuccess.

// For now we will just see if the email and password were valid or not
// and accordingly set authFailureOrSuccess' value.

      authFailureOrSuccess: (condition) ? right(unit) : null,
    );
  }
}
