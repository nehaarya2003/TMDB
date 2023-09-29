part of 'auth_bloc.dart';


@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.emailChanged(String emailString) = _EmailChanged;

  const factory AuthEvent.passwordChanged(String passwordString) =
  _PasswordChanged;

  const factory AuthEvent.obscurePasswordToggled() =
  _ObscurePasswordToggled;

  const factory AuthEvent.loginSubmitted() = _LoginSubmitted;
}
