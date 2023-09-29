
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/base/model/base_model.dart';
import 'movie_reponse_model.dart';

part 'movie_list_reponse_model.g.dart';


@JsonSerializable()
class MovieListResponseModel extends BaseModel<MovieListResponseModel> {
  MovieListResponseModel({ this.page,  this.results});

  final int? page;
  final List<MovieResponseModel>? results;

  @override
  MovieListResponseModel fromJson(Map<String, Object?> json) {
    return _$MovieListResponseModelFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$MovieListResponseModelToJson(this);
  }
}






