// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fav_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavModel _$FavModelFromJson(Map<String, dynamic> json) {
  return _FavModel.fromJson(json);
}

/// @nodoc
mixin _$FavModel {
  bool? get isAdded => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavModelCopyWith<FavModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavModelCopyWith<$Res> {
  factory $FavModelCopyWith(FavModel value, $Res Function(FavModel) then) =
      _$FavModelCopyWithImpl<$Res, FavModel>;
  @useResult
  $Res call({bool? isAdded, String? message});
}

/// @nodoc
class _$FavModelCopyWithImpl<$Res, $Val extends FavModel>
    implements $FavModelCopyWith<$Res> {
  _$FavModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAdded = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      isAdded: freezed == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavModelImplCopyWith<$Res>
    implements $FavModelCopyWith<$Res> {
  factory _$$FavModelImplCopyWith(
          _$FavModelImpl value, $Res Function(_$FavModelImpl) then) =
      __$$FavModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isAdded, String? message});
}

/// @nodoc
class __$$FavModelImplCopyWithImpl<$Res>
    extends _$FavModelCopyWithImpl<$Res, _$FavModelImpl>
    implements _$$FavModelImplCopyWith<$Res> {
  __$$FavModelImplCopyWithImpl(
      _$FavModelImpl _value, $Res Function(_$FavModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAdded = freezed,
    Object? message = freezed,
  }) {
    return _then(_$FavModelImpl(
      isAdded: freezed == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavModelImpl implements _FavModel {
  const _$FavModelImpl({this.isAdded, this.message});

  factory _$FavModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavModelImplFromJson(json);

  @override
  final bool? isAdded;
  @override
  final String? message;

  @override
  String toString() {
    return 'FavModel(isAdded: $isAdded, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavModelImpl &&
            (identical(other.isAdded, isAdded) || other.isAdded == isAdded) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isAdded, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavModelImplCopyWith<_$FavModelImpl> get copyWith =>
      __$$FavModelImplCopyWithImpl<_$FavModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavModelImplToJson(
      this,
    );
  }
}

abstract class _FavModel implements FavModel {
  const factory _FavModel({final bool? isAdded, final String? message}) =
      _$FavModelImpl;

  factory _FavModel.fromJson(Map<String, dynamic> json) =
      _$FavModelImpl.fromJson;

  @override
  bool? get isAdded;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FavModelImplCopyWith<_$FavModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
