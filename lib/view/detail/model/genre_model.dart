import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_model.g.dart';

part 'genre_model.freezed.dart';

@freezed
class GenreModel with _$GenreModel {
  factory GenreModel({String? name,
    int? id,}) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);

}
