
import 'package:freezed_annotation/freezed_annotation.dart';


part 'movie_reponse_model.g.dart';

part 'movie_reponse_model.freezed.dart';

@freezed
class MovieResponseModel with _$MovieResponseModel {
  factory MovieResponseModel(
      {String? poster_path,
        int? id,
      String? original_title,
      String? overview}) = _MovieResponseModel;

  factory MovieResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseModelFromJson(json);

}
