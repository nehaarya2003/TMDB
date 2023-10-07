// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticateApp,
    required TResult Function(int index) indexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticateApp,
    TResult? Function(int index)? indexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticateApp,
    TResult Function(int index)? indexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticateApp value) authenticateApp,
    required TResult Function(_IndexChanged value) indexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticateApp value)? authenticateApp,
    TResult? Function(_IndexChanged value)? indexChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticateApp value)? authenticateApp,
    TResult Function(_IndexChanged value)? indexChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentEventCopyWith<$Res> {
  factory $ContentEventCopyWith(
          ContentEvent value, $Res Function(ContentEvent) then) =
      _$ContentEventCopyWithImpl<$Res, ContentEvent>;
}

/// @nodoc
class _$ContentEventCopyWithImpl<$Res, $Val extends ContentEvent>
    implements $ContentEventCopyWith<$Res> {
  _$ContentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticateAppImplCopyWith<$Res> {
  factory _$$AuthenticateAppImplCopyWith(_$AuthenticateAppImpl value,
          $Res Function(_$AuthenticateAppImpl) then) =
      __$$AuthenticateAppImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateAppImplCopyWithImpl<$Res>
    extends _$ContentEventCopyWithImpl<$Res, _$AuthenticateAppImpl>
    implements _$$AuthenticateAppImplCopyWith<$Res> {
  __$$AuthenticateAppImplCopyWithImpl(
      _$AuthenticateAppImpl _value, $Res Function(_$AuthenticateAppImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticateAppImpl implements _AuthenticateApp {
  const _$AuthenticateAppImpl();

  @override
  String toString() {
    return 'ContentEvent.authenticateApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticateAppImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticateApp,
    required TResult Function(int index) indexChanged,
  }) {
    return authenticateApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticateApp,
    TResult? Function(int index)? indexChanged,
  }) {
    return authenticateApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticateApp,
    TResult Function(int index)? indexChanged,
    required TResult orElse(),
  }) {
    if (authenticateApp != null) {
      return authenticateApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticateApp value) authenticateApp,
    required TResult Function(_IndexChanged value) indexChanged,
  }) {
    return authenticateApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticateApp value)? authenticateApp,
    TResult? Function(_IndexChanged value)? indexChanged,
  }) {
    return authenticateApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticateApp value)? authenticateApp,
    TResult Function(_IndexChanged value)? indexChanged,
    required TResult orElse(),
  }) {
    if (authenticateApp != null) {
      return authenticateApp(this);
    }
    return orElse();
  }
}

abstract class _AuthenticateApp implements ContentEvent {
  const factory _AuthenticateApp() = _$AuthenticateAppImpl;
}

/// @nodoc
abstract class _$$IndexChangedImplCopyWith<$Res> {
  factory _$$IndexChangedImplCopyWith(
          _$IndexChangedImpl value, $Res Function(_$IndexChangedImpl) then) =
      __$$IndexChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$IndexChangedImplCopyWithImpl<$Res>
    extends _$ContentEventCopyWithImpl<$Res, _$IndexChangedImpl>
    implements _$$IndexChangedImplCopyWith<$Res> {
  __$$IndexChangedImplCopyWithImpl(
      _$IndexChangedImpl _value, $Res Function(_$IndexChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$IndexChangedImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IndexChangedImpl implements _IndexChanged {
  const _$IndexChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ContentEvent.indexChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexChangedImplCopyWith<_$IndexChangedImpl> get copyWith =>
      __$$IndexChangedImplCopyWithImpl<_$IndexChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticateApp,
    required TResult Function(int index) indexChanged,
  }) {
    return indexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticateApp,
    TResult? Function(int index)? indexChanged,
  }) {
    return indexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticateApp,
    TResult Function(int index)? indexChanged,
    required TResult orElse(),
  }) {
    if (indexChanged != null) {
      return indexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticateApp value) authenticateApp,
    required TResult Function(_IndexChanged value) indexChanged,
  }) {
    return indexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticateApp value)? authenticateApp,
    TResult? Function(_IndexChanged value)? indexChanged,
  }) {
    return indexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticateApp value)? authenticateApp,
    TResult Function(_IndexChanged value)? indexChanged,
    required TResult orElse(),
  }) {
    if (indexChanged != null) {
      return indexChanged(this);
    }
    return orElse();
  }
}

abstract class _IndexChanged implements ContentEvent {
  const factory _IndexChanged(final int index) = _$IndexChangedImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$IndexChangedImplCopyWith<_$IndexChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContentState {
  String get token => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  MovieListResponseModel? get movieResponse =>
      throw _privateConstructorUsedError;
  Either<MovieAuthFailure, Unit>? get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentStateCopyWith<ContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentStateCopyWith<$Res> {
  factory $ContentStateCopyWith(
          ContentState value, $Res Function(ContentState) then) =
      _$ContentStateCopyWithImpl<$Res, ContentState>;
  @useResult
  $Res call(
      {String token,
      bool isLoading,
      int index,
      bool showErrorMessage,
      MovieListResponseModel? movieResponse,
      Either<MovieAuthFailure, Unit>? authFailureOrSuccess});

  $MovieListResponseModelCopyWith<$Res>? get movieResponse;
}

/// @nodoc
class _$ContentStateCopyWithImpl<$Res, $Val extends ContentState>
    implements $ContentStateCopyWith<$Res> {
  _$ContentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? isLoading = null,
    Object? index = null,
    Object? showErrorMessage = null,
    Object? movieResponse = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      movieResponse: freezed == movieResponse
          ? _value.movieResponse
          : movieResponse // ignore: cast_nullable_to_non_nullable
              as MovieListResponseModel?,
      authFailureOrSuccess: freezed == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<MovieAuthFailure, Unit>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieListResponseModelCopyWith<$Res>? get movieResponse {
    if (_value.movieResponse == null) {
      return null;
    }

    return $MovieListResponseModelCopyWith<$Res>(_value.movieResponse!,
        (value) {
      return _then(_value.copyWith(movieResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContentStateImplCopyWith<$Res>
    implements $ContentStateCopyWith<$Res> {
  factory _$$ContentStateImplCopyWith(
          _$ContentStateImpl value, $Res Function(_$ContentStateImpl) then) =
      __$$ContentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      bool isLoading,
      int index,
      bool showErrorMessage,
      MovieListResponseModel? movieResponse,
      Either<MovieAuthFailure, Unit>? authFailureOrSuccess});

  @override
  $MovieListResponseModelCopyWith<$Res>? get movieResponse;
}

/// @nodoc
class __$$ContentStateImplCopyWithImpl<$Res>
    extends _$ContentStateCopyWithImpl<$Res, _$ContentStateImpl>
    implements _$$ContentStateImplCopyWith<$Res> {
  __$$ContentStateImplCopyWithImpl(
      _$ContentStateImpl _value, $Res Function(_$ContentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? isLoading = null,
    Object? index = null,
    Object? showErrorMessage = null,
    Object? movieResponse = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_$ContentStateImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      movieResponse: freezed == movieResponse
          ? _value.movieResponse
          : movieResponse // ignore: cast_nullable_to_non_nullable
              as MovieListResponseModel?,
      authFailureOrSuccess: freezed == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<MovieAuthFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$ContentStateImpl implements _ContentState {
  const _$ContentStateImpl(
      {required this.token,
      this.isLoading = false,
      this.index = 0,
      this.showErrorMessage = false,
      this.movieResponse,
      this.authFailureOrSuccess});

  @override
  final String token;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int index;
  @override
  @JsonKey()
  final bool showErrorMessage;
  @override
  final MovieListResponseModel? movieResponse;
  @override
  final Either<MovieAuthFailure, Unit>? authFailureOrSuccess;

  @override
  String toString() {
    return 'ContentState(token: $token, isLoading: $isLoading, index: $index, showErrorMessage: $showErrorMessage, movieResponse: $movieResponse, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentStateImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.movieResponse, movieResponse) ||
                other.movieResponse == movieResponse) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                other.authFailureOrSuccess == authFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, isLoading, index,
      showErrorMessage, movieResponse, authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentStateImplCopyWith<_$ContentStateImpl> get copyWith =>
      __$$ContentStateImplCopyWithImpl<_$ContentStateImpl>(this, _$identity);
}

abstract class _ContentState implements ContentState {
  const factory _ContentState(
          {required final String token,
          final bool isLoading,
          final int index,
          final bool showErrorMessage,
          final MovieListResponseModel? movieResponse,
          final Either<MovieAuthFailure, Unit>? authFailureOrSuccess}) =
      _$ContentStateImpl;

  @override
  String get token;
  @override
  bool get isLoading;
  @override
  int get index;
  @override
  bool get showErrorMessage;
  @override
  MovieListResponseModel? get movieResponse;
  @override
  Either<MovieAuthFailure, Unit>? get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$ContentStateImplCopyWith<_$ContentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
