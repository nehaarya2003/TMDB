// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponseModel _$AuthResponseModelFromJson(Map<String, dynamic> json) =>
    AuthResponseModel(
      status_code: json['status_code'] as int?,
      status_message: json['status_message'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$AuthResponseModelToJson(AuthResponseModel instance) =>
    <String, dynamic>{
      'status_message': instance.status_message,
      'status_code': instance.status_code,
      'success': instance.success,
    };
