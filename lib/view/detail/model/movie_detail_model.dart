import 'package:freezed_annotation/freezed_annotation.dart';

import 'genre_model.dart';

part 'movie_detail_model.g.dart';

part 'movie_detail_model.freezed.dart';

@freezed
class MovieDetailModel with _$MovieDetailModel {
  factory MovieDetailModel({
    String? backdrop_path,
    String? original_title,
    String? tagline,
    String? overview,
    int? budget,
    int? revenue,
    int? runtime,
    double? vote_average,
    List<GenreModel>? genres,
    int? id,
  }) = _MovieDetailModel;

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailModelFromJson(json);
}
