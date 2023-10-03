import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/model/base_model.dart';

part 'auth_response_model.g.dart';
part 'auth_response_model.freezed.dart';


@freezed
class AuthResponseModel with _$AuthResponseModel {
  const factory AuthResponseModel(
      {int? status_code,
      String? status_message,
      bool? success}) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}
