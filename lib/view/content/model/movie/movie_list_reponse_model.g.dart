// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_reponse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieListResponseModel _$MovieListResponseModelFromJson(
        Map<String, dynamic> json) =>
    MovieListResponseModel(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieListResponseModelToJson(
        MovieListResponseModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
