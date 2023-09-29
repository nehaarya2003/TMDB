// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_reponse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieResponseModel _$MovieResponseModelFromJson(Map<String, dynamic> json) =>
    MovieResponseModel(
      poster_path: json['poster_path'] as String?,
      original_title: json['original_title'] as String?,
      overview: json['overview'] as String?,
    );

Map<String, dynamic> _$MovieResponseModelToJson(MovieResponseModel instance) =>
    <String, dynamic>{
      'poster_path': instance.poster_path,
      'original_title': instance.original_title,
      'overview': instance.overview,
    };
