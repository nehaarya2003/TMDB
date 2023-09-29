
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/model/base_model.dart';
part 'movie_reponse_model.g.dart';

@JsonSerializable()
class MovieResponseModel extends BaseModel<MovieResponseModel> {
  MovieResponseModel({ this.poster_path,  this.original_title, this.overview});

  final String? poster_path;
  final String? original_title;
  final String? overview;

  @override
  MovieResponseModel fromJson(Map<String, Object?> json) {
    return _$MovieResponseModelFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$MovieResponseModelToJson(this);
  }
}
