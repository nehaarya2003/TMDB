import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

import '../../../../core/base/model/base_model.dart';

part 'auth_response_model.g.dart';

@JsonSerializable()
class AuthResponseModel extends BaseModel<AuthResponseModel> {
  AuthResponseModel({ this.status_code,  this.status_message, this.success});

  final String? status_message;
  final int? status_code;
  final bool? success;

  @override
  AuthResponseModel fromJson(Map<String, Object?> json) {
    return _$AuthResponseModelFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$AuthResponseModelToJson(this);
  }
}
