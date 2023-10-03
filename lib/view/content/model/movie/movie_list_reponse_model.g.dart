// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_reponse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieListResponseModelImpl _$$MovieListResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieListResponseModelImpl(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map(
                  (e) => MovieResponseModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MovieListResponseModelImplToJson(
        _$MovieListResponseModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
