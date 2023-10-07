import 'package:freezed_annotation/freezed_annotation.dart';

part 'fav_model.g.dart';
part 'fav_model.freezed.dart';


@freezed
class FavModel with _$FavModel {
  const factory FavModel(
      {bool? isAdded,
        String? message,
        }) = _FavModel;

  factory FavModel.fromJson(Map<String, dynamic> json) =>
      _$FavModelFromJson(json);
}
