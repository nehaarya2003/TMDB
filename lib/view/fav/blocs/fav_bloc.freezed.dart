// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavList value) getFavList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavList value)? getFavList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavList value)? getFavList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavEventCopyWith<$Res> {
  factory $FavEventCopyWith(FavEvent value, $Res Function(FavEvent) then) =
      _$FavEventCopyWithImpl<$Res, FavEvent>;
}

/// @nodoc
class _$FavEventCopyWithImpl<$Res, $Val extends FavEvent>
    implements $FavEventCopyWith<$Res> {
  _$FavEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFavListImplCopyWith<$Res> {
  factory _$$GetFavListImplCopyWith(
          _$GetFavListImpl value, $Res Function(_$GetFavListImpl) then) =
      __$$GetFavListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavListImplCopyWithImpl<$Res>
    extends _$FavEventCopyWithImpl<$Res, _$GetFavListImpl>
    implements _$$GetFavListImplCopyWith<$Res> {
  __$$GetFavListImplCopyWithImpl(
      _$GetFavListImpl _value, $Res Function(_$GetFavListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFavListImpl implements _GetFavList {
  const _$GetFavListImpl();

  @override
  String toString() {
    return 'FavEvent.getFavList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFavListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavList,
  }) {
    return getFavList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavList,
  }) {
    return getFavList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavList,
    required TResult orElse(),
  }) {
    if (getFavList != null) {
      return getFavList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavList value) getFavList,
  }) {
    return getFavList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavList value)? getFavList,
  }) {
    return getFavList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavList value)? getFavList,
    required TResult orElse(),
  }) {
    if (getFavList != null) {
      return getFavList(this);
    }
    return orElse();
  }
}

abstract class _GetFavList implements FavEvent {
  const factory _GetFavList() = _$GetFavListImpl;
}

/// @nodoc
mixin _$FavState {
// required String token,
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Either<MovieAuthFailure, Unit>? get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavStateCopyWith<FavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavStateCopyWith<$Res> {
  factory $FavStateCopyWith(FavState value, $Res Function(FavState) then) =
      _$FavStateCopyWithImpl<$Res, FavState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool showErrorMessage,
      Either<MovieAuthFailure, Unit>? authFailureOrSuccess});
}

/// @nodoc
class _$FavStateCopyWithImpl<$Res, $Val extends FavState>
    implements $FavStateCopyWith<$Res> {
  _$FavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showErrorMessage = null,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: freezed == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<MovieAuthFailure, Unit>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavStateImplCopyWith<$Res>
    implements $FavStateCopyWith<$Res> {
  factory _$$FavStateImplCopyWith(
          _$FavStateImpl value, $Res Function(_$FavStateImpl) then) =
      __$$FavStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool showErrorMessage,
      Either<MovieAuthFailure, Unit>? authFailureOrSuccess});
}

/// @nodoc
class __$$FavStateImplCopyWithImpl<$Res>
    extends _$FavStateCopyWithImpl<$Res, _$FavStateImpl>
    implements _$$FavStateImplCopyWith<$Res> {
  __$$FavStateImplCopyWithImpl(
      _$FavStateImpl _value, $Res Function(_$FavStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showErrorMessage = null,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_$FavStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: freezed == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<MovieAuthFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$FavStateImpl implements _FavState {
  const _$FavStateImpl(
      {this.isLoading = false,
      this.showErrorMessage = false,
      this.authFailureOrSuccess});

// required String token,
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool showErrorMessage;
  @override
  final Either<MovieAuthFailure, Unit>? authFailureOrSuccess;

  @override
  String toString() {
    return 'FavState(isLoading: $isLoading, showErrorMessage: $showErrorMessage, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                other.authFailureOrSuccess == authFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, showErrorMessage, authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavStateImplCopyWith<_$FavStateImpl> get copyWith =>
      __$$FavStateImplCopyWithImpl<_$FavStateImpl>(this, _$identity);
}

abstract class _FavState implements FavState {
  const factory _FavState(
          {final bool isLoading,
          final bool showErrorMessage,
          final Either<MovieAuthFailure, Unit>? authFailureOrSuccess}) =
      _$FavStateImpl;

  @override // required String token,
  bool get isLoading;
  @override
  bool get showErrorMessage;
  @override
  Either<MovieAuthFailure, Unit>? get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$FavStateImplCopyWith<_$FavStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
