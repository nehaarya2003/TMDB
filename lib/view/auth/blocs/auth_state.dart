part of 'auth_bloc.dart';


@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required EmailAddress emailAddress,
    required Password password,
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitting,
    @Default(false) bool showErrorMessage,
    @Default(false) bool authenticationSuccess,
    @Default(true) bool obscurePassword,
    Either<AuthFailure, Unit>? authFailureOrSuccess,
    // Unit comes from Dartz package and is equivalent to void.
  }) = _LoginFormState;

  factory AuthenticationState.initial() => AuthenticationState(
    emailAddress: EmailAddress(''),
    password: Password(''),
  );
}
