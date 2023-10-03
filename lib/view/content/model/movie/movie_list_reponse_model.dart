
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/model/base_model.dart';
import 'movie_reponse_model.dart';

part 'movie_list_reponse_model.g.dart';
part 'movie_list_reponse_model.freezed.dart';


@freezed
class MovieListResponseModel extends BaseModel<MovieListResponseModel> with _$MovieListResponseModel  {
  factory MovieListResponseModel({
     int? page,
    // note: using a JsonKey to map our JSON key that uses
    // *snake_case* to our Dart variable that uses *camelCase*
  //  @JsonKey(name: 'year_opened') int? yearOpened,
    // note: using an empty list as a default value
    @Default([]) List<MovieResponseModel> results,
  }) = _MovieListResponseModel;

  factory MovieListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieListResponseModelFromJson(json);
}







