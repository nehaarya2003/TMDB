import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';

part 'api_error.g.dart';



@freezed
class ApiError with _$ApiError {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ApiError({required bool? success, required int? status_code,required String? status_message}) =
  _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}