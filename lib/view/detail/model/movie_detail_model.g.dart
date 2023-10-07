// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailModelImpl _$$MovieDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailModelImpl(
      backdrop_path: json['backdrop_path'] as String?,
      original_title: json['original_title'] as String?,
      tagline: json['tagline'] as String?,
      overview: json['overview'] as String?,
      budget: json['budget'] as int?,
      revenue: json['revenue'] as int?,
      runtime: json['runtime'] as int?,
      vote_average: (json['vote_average'] as num?)?.toDouble(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$MovieDetailModelImplToJson(
        _$MovieDetailModelImpl instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdrop_path,
      'original_title': instance.original_title,
      'tagline': instance.tagline,
      'overview': instance.overview,
      'budget': instance.budget,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'vote_average': instance.vote_average,
      'genres': instance.genres,
      'id': instance.id,
    };
