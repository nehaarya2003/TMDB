part of 'auth_bloc.dart';

enum AuthStatus {
  success,
  failure,
  loading,
}
class AuthState {}

class AuthSuccessState extends AuthState {
  AuthSuccessState();
}
class AuthFailureState extends AuthState {
  AuthFailureState();
}
