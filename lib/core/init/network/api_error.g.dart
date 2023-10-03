// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiErrorImpl _$$ApiErrorImplFromJson(Map<String, dynamic> json) =>
    _$ApiErrorImpl(
      success: json['success'] as bool?,
      status_code: json['status_code'] as int?,
      status_message: json['status_message'] as String?,
    );

Map<String, dynamic> _$$ApiErrorImplToJson(_$ApiErrorImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status_code': instance.status_code,
      'status_message': instance.status_message,
    };
