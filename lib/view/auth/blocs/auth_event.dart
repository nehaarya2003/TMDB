part of 'auth_bloc.dart';

abstract class AuthEvent {}

class SignUpEvent extends AuthEvent {
  SignUpEvent();
}

class SignUpButtonPressedEvent extends SignUpEvent {
  SignUpButtonPressedEvent();
}

class SignUpEmailChangedEvent extends SignUpEvent {
  SignUpEmailChangedEvent({required this.email});

  final String email;

  @override
  List<Object> get props => [email];
}

class SignUpPasswordChangedEvent extends SignUpEvent {
  SignUpPasswordChangedEvent({required this.password});

  final String password;

  @override
  List<Object> get props => [password];
}
