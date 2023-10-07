// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_reponse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieResponseModel _$MovieResponseModelFromJson(Map<String, dynamic> json) {
  return _MovieResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MovieResponseModel {
  String? get poster_path => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get original_title => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResponseModelCopyWith<MovieResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResponseModelCopyWith<$Res> {
  factory $MovieResponseModelCopyWith(
          MovieResponseModel value, $Res Function(MovieResponseModel) then) =
      _$MovieResponseModelCopyWithImpl<$Res, MovieResponseModel>;
  @useResult
  $Res call(
      {String? poster_path, int? id, String? original_title, String? overview});
}

/// @nodoc
class _$MovieResponseModelCopyWithImpl<$Res, $Val extends MovieResponseModel>
    implements $MovieResponseModelCopyWith<$Res> {
  _$MovieResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poster_path = freezed,
    Object? id = freezed,
    Object? original_title = freezed,
    Object? overview = freezed,
  }) {
    return _then(_value.copyWith(
      poster_path: freezed == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      original_title: freezed == original_title
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieResponseModelImplCopyWith<$Res>
    implements $MovieResponseModelCopyWith<$Res> {
  factory _$$MovieResponseModelImplCopyWith(_$MovieResponseModelImpl value,
          $Res Function(_$MovieResponseModelImpl) then) =
      __$$MovieResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? poster_path, int? id, String? original_title, String? overview});
}

/// @nodoc
class __$$MovieResponseModelImplCopyWithImpl<$Res>
    extends _$MovieResponseModelCopyWithImpl<$Res, _$MovieResponseModelImpl>
    implements _$$MovieResponseModelImplCopyWith<$Res> {
  __$$MovieResponseModelImplCopyWithImpl(_$MovieResponseModelImpl _value,
      $Res Function(_$MovieResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poster_path = freezed,
    Object? id = freezed,
    Object? original_title = freezed,
    Object? overview = freezed,
  }) {
    return _then(_$MovieResponseModelImpl(
      poster_path: freezed == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      original_title: freezed == original_title
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieResponseModelImpl implements _MovieResponseModel {
  _$MovieResponseModelImpl(
      {this.poster_path, this.id, this.original_title, this.overview});

  factory _$MovieResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieResponseModelImplFromJson(json);

  @override
  final String? poster_path;
  @override
  final int? id;
  @override
  final String? original_title;
  @override
  final String? overview;

  @override
  String toString() {
    return 'MovieResponseModel(poster_path: $poster_path, id: $id, original_title: $original_title, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieResponseModelImpl &&
            (identical(other.poster_path, poster_path) ||
                other.poster_path == poster_path) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.original_title, original_title) ||
                other.original_title == original_title) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, poster_path, id, original_title, overview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieResponseModelImplCopyWith<_$MovieResponseModelImpl> get copyWith =>
      __$$MovieResponseModelImplCopyWithImpl<_$MovieResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MovieResponseModel implements MovieResponseModel {
  factory _MovieResponseModel(
      {final String? poster_path,
      final int? id,
      final String? original_title,
      final String? overview}) = _$MovieResponseModelImpl;

  factory _MovieResponseModel.fromJson(Map<String, dynamic> json) =
      _$MovieResponseModelImpl.fromJson;

  @override
  String? get poster_path;
  @override
  int? get id;
  @override
  String? get original_title;
  @override
  String? get overview;
  @override
  @JsonKey(ignore: true)
  _$$MovieResponseModelImplCopyWith<_$MovieResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
