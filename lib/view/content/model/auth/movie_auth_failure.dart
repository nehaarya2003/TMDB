import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_auth_failure.freezed.dart';

@freezed
class MovieAuthFailure with _$MovieAuthFailure {
  const factory MovieAuthFailure.invalidToken() =
  _InvalidToken;
  const factory MovieAuthFailure.serverError() = _ServerError;
}