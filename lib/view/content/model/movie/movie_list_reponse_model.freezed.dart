// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_reponse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieListResponseModel _$MovieListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MovieListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MovieListResponseModel {
  int? get page =>
      throw _privateConstructorUsedError; // note: using a JsonKey to map our JSON key that uses
// *snake_case* to our Dart variable that uses *camelCase*
//  @JsonKey(name: 'year_opened') int? yearOpened,
// note: using an empty list as a default value
  List<MovieResponseModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieListResponseModelCopyWith<MovieListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListResponseModelCopyWith<$Res> {
  factory $MovieListResponseModelCopyWith(MovieListResponseModel value,
          $Res Function(MovieListResponseModel) then) =
      _$MovieListResponseModelCopyWithImpl<$Res, MovieListResponseModel>;
  @useResult
  $Res call({int? page, List<MovieResponseModel> results});
}

/// @nodoc
class _$MovieListResponseModelCopyWithImpl<$Res,
        $Val extends MovieListResponseModel>
    implements $MovieListResponseModelCopyWith<$Res> {
  _$MovieListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieResponseModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieListResponseModelImplCopyWith<$Res>
    implements $MovieListResponseModelCopyWith<$Res> {
  factory _$$MovieListResponseModelImplCopyWith(
          _$MovieListResponseModelImpl value,
          $Res Function(_$MovieListResponseModelImpl) then) =
      __$$MovieListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? page, List<MovieResponseModel> results});
}

/// @nodoc
class __$$MovieListResponseModelImplCopyWithImpl<$Res>
    extends _$MovieListResponseModelCopyWithImpl<$Res,
        _$MovieListResponseModelImpl>
    implements _$$MovieListResponseModelImplCopyWith<$Res> {
  __$$MovieListResponseModelImplCopyWithImpl(
      _$MovieListResponseModelImpl _value,
      $Res Function(_$MovieListResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = null,
  }) {
    return _then(_$MovieListResponseModelImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieResponseModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieListResponseModelImpl implements _MovieListResponseModel {
  _$MovieListResponseModelImpl(
      {this.page, final List<MovieResponseModel> results = const []})
      : _results = results;

  factory _$MovieListResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieListResponseModelImplFromJson(json);

  @override
  final int? page;
// note: using a JsonKey to map our JSON key that uses
// *snake_case* to our Dart variable that uses *camelCase*
//  @JsonKey(name: 'year_opened') int? yearOpened,
// note: using an empty list as a default value
  final List<MovieResponseModel> _results;
// note: using a JsonKey to map our JSON key that uses
// *snake_case* to our Dart variable that uses *camelCase*
//  @JsonKey(name: 'year_opened') int? yearOpened,
// note: using an empty list as a default value
  @override
  @JsonKey()
  List<MovieResponseModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MovieListResponseModel(page: $page, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListResponseModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListResponseModelImplCopyWith<_$MovieListResponseModelImpl>
      get copyWith => __$$MovieListResponseModelImplCopyWithImpl<
          _$MovieListResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieListResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MovieListResponseModel implements MovieListResponseModel {
  factory _MovieListResponseModel(
      {final int? page,
      final List<MovieResponseModel> results}) = _$MovieListResponseModelImpl;

  factory _MovieListResponseModel.fromJson(Map<String, dynamic> json) =
      _$MovieListResponseModelImpl.fromJson;

  @override
  int? get page;
  @override // note: using a JsonKey to map our JSON key that uses
// *snake_case* to our Dart variable that uses *camelCase*
//  @JsonKey(name: 'year_opened') int? yearOpened,
// note: using an empty list as a default value
  List<MovieResponseModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$MovieListResponseModelImplCopyWith<_$MovieListResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
