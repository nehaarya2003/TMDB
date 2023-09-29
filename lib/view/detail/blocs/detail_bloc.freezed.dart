// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieID) getMovieDetail,
    required TResult Function(String accountID) addToFav,
    required TResult Function(String accountID) removeFromFav,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String movieID)? getMovieDetail,
    TResult? Function(String accountID)? addToFav,
    TResult? Function(String accountID)? removeFromFav,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieID)? getMovieDetail,
    TResult Function(String accountID)? addToFav,
    TResult Function(String accountID)? removeFromFav,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieDetail value) getMovieDetail,
    required TResult Function(_AddToFav value) addToFav,
    required TResult Function(_removeFromFav value) removeFromFav,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMovieDetail value)? getMovieDetail,
    TResult? Function(_AddToFav value)? addToFav,
    TResult? Function(_removeFromFav value)? removeFromFav,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieDetail value)? getMovieDetail,
    TResult Function(_AddToFav value)? addToFav,
    TResult Function(_removeFromFav value)? removeFromFav,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res, DetailEvent>;
}

/// @nodoc
class _$DetailEventCopyWithImpl<$Res, $Val extends DetailEvent>
    implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMovieDetailImplCopyWith<$Res> {
  factory _$$GetMovieDetailImplCopyWith(_$GetMovieDetailImpl value,
          $Res Function(_$GetMovieDetailImpl) then) =
      __$$GetMovieDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String movieID});
}

/// @nodoc
class __$$GetMovieDetailImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$GetMovieDetailImpl>
    implements _$$GetMovieDetailImplCopyWith<$Res> {
  __$$GetMovieDetailImplCopyWithImpl(
      _$GetMovieDetailImpl _value, $Res Function(_$GetMovieDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieID = null,
  }) {
    return _then(_$GetMovieDetailImpl(
      null == movieID
          ? _value.movieID
          : movieID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMovieDetailImpl implements _GetMovieDetail {
  const _$GetMovieDetailImpl(this.movieID);

  @override
  final String movieID;

  @override
  String toString() {
    return 'DetailEvent.getMovieDetail(movieID: $movieID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieDetailImpl &&
            (identical(other.movieID, movieID) || other.movieID == movieID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMovieDetailImplCopyWith<_$GetMovieDetailImpl> get copyWith =>
      __$$GetMovieDetailImplCopyWithImpl<_$GetMovieDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieID) getMovieDetail,
    required TResult Function(String accountID) addToFav,
    required TResult Function(String accountID) removeFromFav,
  }) {
    return getMovieDetail(movieID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String movieID)? getMovieDetail,
    TResult? Function(String accountID)? addToFav,
    TResult? Function(String accountID)? removeFromFav,
  }) {
    return getMovieDetail?.call(movieID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieID)? getMovieDetail,
    TResult Function(String accountID)? addToFav,
    TResult Function(String accountID)? removeFromFav,
    required TResult orElse(),
  }) {
    if (getMovieDetail != null) {
      return getMovieDetail(movieID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieDetail value) getMovieDetail,
    required TResult Function(_AddToFav value) addToFav,
    required TResult Function(_removeFromFav value) removeFromFav,
  }) {
    return getMovieDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMovieDetail value)? getMovieDetail,
    TResult? Function(_AddToFav value)? addToFav,
    TResult? Function(_removeFromFav value)? removeFromFav,
  }) {
    return getMovieDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieDetail value)? getMovieDetail,
    TResult Function(_AddToFav value)? addToFav,
    TResult Function(_removeFromFav value)? removeFromFav,
    required TResult orElse(),
  }) {
    if (getMovieDetail != null) {
      return getMovieDetail(this);
    }
    return orElse();
  }
}

abstract class _GetMovieDetail implements DetailEvent {
  const factory _GetMovieDetail(final String movieID) = _$GetMovieDetailImpl;

  String get movieID;
  @JsonKey(ignore: true)
  _$$GetMovieDetailImplCopyWith<_$GetMovieDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToFavImplCopyWith<$Res> {
  factory _$$AddToFavImplCopyWith(
          _$AddToFavImpl value, $Res Function(_$AddToFavImpl) then) =
      __$$AddToFavImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accountID});
}

/// @nodoc
class __$$AddToFavImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$AddToFavImpl>
    implements _$$AddToFavImplCopyWith<$Res> {
  __$$AddToFavImplCopyWithImpl(
      _$AddToFavImpl _value, $Res Function(_$AddToFavImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountID = null,
  }) {
    return _then(_$AddToFavImpl(
      null == accountID
          ? _value.accountID
          : accountID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToFavImpl implements _AddToFav {
  const _$AddToFavImpl(this.accountID);

  @override
  final String accountID;

  @override
  String toString() {
    return 'DetailEvent.addToFav(accountID: $accountID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFavImpl &&
            (identical(other.accountID, accountID) ||
                other.accountID == accountID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToFavImplCopyWith<_$AddToFavImpl> get copyWith =>
      __$$AddToFavImplCopyWithImpl<_$AddToFavImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieID) getMovieDetail,
    required TResult Function(String accountID) addToFav,
    required TResult Function(String accountID) removeFromFav,
  }) {
    return addToFav(accountID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String movieID)? getMovieDetail,
    TResult? Function(String accountID)? addToFav,
    TResult? Function(String accountID)? removeFromFav,
  }) {
    return addToFav?.call(accountID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieID)? getMovieDetail,
    TResult Function(String accountID)? addToFav,
    TResult Function(String accountID)? removeFromFav,
    required TResult orElse(),
  }) {
    if (addToFav != null) {
      return addToFav(accountID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieDetail value) getMovieDetail,
    required TResult Function(_AddToFav value) addToFav,
    required TResult Function(_removeFromFav value) removeFromFav,
  }) {
    return addToFav(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMovieDetail value)? getMovieDetail,
    TResult? Function(_AddToFav value)? addToFav,
    TResult? Function(_removeFromFav value)? removeFromFav,
  }) {
    return addToFav?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieDetail value)? getMovieDetail,
    TResult Function(_AddToFav value)? addToFav,
    TResult Function(_removeFromFav value)? removeFromFav,
    required TResult orElse(),
  }) {
    if (addToFav != null) {
      return addToFav(this);
    }
    return orElse();
  }
}

abstract class _AddToFav implements DetailEvent {
  const factory _AddToFav(final String accountID) = _$AddToFavImpl;

  String get accountID;
  @JsonKey(ignore: true)
  _$$AddToFavImplCopyWith<_$AddToFavImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$removeFromFavImplCopyWith<$Res> {
  factory _$$removeFromFavImplCopyWith(
          _$removeFromFavImpl value, $Res Function(_$removeFromFavImpl) then) =
      __$$removeFromFavImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accountID});
}

/// @nodoc
class __$$removeFromFavImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$removeFromFavImpl>
    implements _$$removeFromFavImplCopyWith<$Res> {
  __$$removeFromFavImplCopyWithImpl(
      _$removeFromFavImpl _value, $Res Function(_$removeFromFavImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountID = null,
  }) {
    return _then(_$removeFromFavImpl(
      null == accountID
          ? _value.accountID
          : accountID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$removeFromFavImpl implements _removeFromFav {
  const _$removeFromFavImpl(this.accountID);

  @override
  final String accountID;

  @override
  String toString() {
    return 'DetailEvent.removeFromFav(accountID: $accountID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$removeFromFavImpl &&
            (identical(other.accountID, accountID) ||
                other.accountID == accountID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$removeFromFavImplCopyWith<_$removeFromFavImpl> get copyWith =>
      __$$removeFromFavImplCopyWithImpl<_$removeFromFavImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieID) getMovieDetail,
    required TResult Function(String accountID) addToFav,
    required TResult Function(String accountID) removeFromFav,
  }) {
    return removeFromFav(accountID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String movieID)? getMovieDetail,
    TResult? Function(String accountID)? addToFav,
    TResult? Function(String accountID)? removeFromFav,
  }) {
    return removeFromFav?.call(accountID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieID)? getMovieDetail,
    TResult Function(String accountID)? addToFav,
    TResult Function(String accountID)? removeFromFav,
    required TResult orElse(),
  }) {
    if (removeFromFav != null) {
      return removeFromFav(accountID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieDetail value) getMovieDetail,
    required TResult Function(_AddToFav value) addToFav,
    required TResult Function(_removeFromFav value) removeFromFav,
  }) {
    return removeFromFav(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMovieDetail value)? getMovieDetail,
    TResult? Function(_AddToFav value)? addToFav,
    TResult? Function(_removeFromFav value)? removeFromFav,
  }) {
    return removeFromFav?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieDetail value)? getMovieDetail,
    TResult Function(_AddToFav value)? addToFav,
    TResult Function(_removeFromFav value)? removeFromFav,
    required TResult orElse(),
  }) {
    if (removeFromFav != null) {
      return removeFromFav(this);
    }
    return orElse();
  }
}

abstract class _removeFromFav implements DetailEvent {
  const factory _removeFromFav(final String accountID) = _$removeFromFavImpl;

  String get accountID;
  @JsonKey(ignore: true)
  _$$removeFromFavImplCopyWith<_$removeFromFavImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailState {
  String get movieID => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Either<MovieDetailFailure, Unit>? get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call(
      {String movieID,
      bool isLoading,
      bool showErrorMessage,
      Either<MovieDetailFailure, Unit>? authFailureOrSuccess});
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieID = null,
    Object? isLoading = null,
    Object? showErrorMessage = null,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      movieID: null == movieID
          ? _value.movieID
          : movieID // ignore: cast_nullable_to_non_nullable
              as String,
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
              as Either<MovieDetailFailure, Unit>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentStateImplCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$ContentStateImplCopyWith(
          _$ContentStateImpl value, $Res Function(_$ContentStateImpl) then) =
      __$$ContentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String movieID,
      bool isLoading,
      bool showErrorMessage,
      Either<MovieDetailFailure, Unit>? authFailureOrSuccess});
}

/// @nodoc
class __$$ContentStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$ContentStateImpl>
    implements _$$ContentStateImplCopyWith<$Res> {
  __$$ContentStateImplCopyWithImpl(
      _$ContentStateImpl _value, $Res Function(_$ContentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieID = null,
    Object? isLoading = null,
    Object? showErrorMessage = null,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_$ContentStateImpl(
      movieID: null == movieID
          ? _value.movieID
          : movieID // ignore: cast_nullable_to_non_nullable
              as String,
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
              as Either<MovieDetailFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$ContentStateImpl implements _ContentState {
  const _$ContentStateImpl(
      {required this.movieID,
      this.isLoading = false,
      this.showErrorMessage = false,
      this.authFailureOrSuccess});

  @override
  final String movieID;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool showErrorMessage;
  @override
  final Either<MovieDetailFailure, Unit>? authFailureOrSuccess;

  @override
  String toString() {
    return 'DetailState(movieID: $movieID, isLoading: $isLoading, showErrorMessage: $showErrorMessage, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentStateImpl &&
            (identical(other.movieID, movieID) || other.movieID == movieID) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                other.authFailureOrSuccess == authFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, movieID, isLoading, showErrorMessage, authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentStateImplCopyWith<_$ContentStateImpl> get copyWith =>
      __$$ContentStateImplCopyWithImpl<_$ContentStateImpl>(this, _$identity);
}

abstract class _ContentState implements DetailState {
  const factory _ContentState(
          {required final String movieID,
          final bool isLoading,
          final bool showErrorMessage,
          final Either<MovieDetailFailure, Unit>? authFailureOrSuccess}) =
      _$ContentStateImpl;

  @override
  String get movieID;
  @override
  bool get isLoading;
  @override
  bool get showErrorMessage;
  @override
  Either<MovieDetailFailure, Unit>? get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$ContentStateImplCopyWith<_$ContentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
