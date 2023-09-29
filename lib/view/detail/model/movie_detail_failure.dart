import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_detail_failure.freezed.dart';

@freezed
class MovieDetailFailure with _$MovieDetailFailure {
  const factory MovieDetailFailure.failed() =
  _Failed;
  const factory MovieDetailFailure.serverError() = _ServerError;
}