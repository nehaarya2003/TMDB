// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode) setDarkMode,
    required TResult Function() getDarkMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode)? setDarkMode,
    TResult? Function()? getDarkMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode)? setDarkMode,
    TResult Function()? getDarkMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDarkMode value) setDarkMode,
    required TResult Function(_GetDarkMode value) getDarkMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDarkMode value)? setDarkMode,
    TResult? Function(_GetDarkMode value)? getDarkMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDarkMode value)? setDarkMode,
    TResult Function(_GetDarkMode value)? getDarkMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
          SettingEvent value, $Res Function(SettingEvent) then) =
      _$SettingEventCopyWithImpl<$Res, SettingEvent>;
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res, $Val extends SettingEvent>
    implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetDarkModeImplCopyWith<$Res> {
  factory _$$SetDarkModeImplCopyWith(
          _$SetDarkModeImpl value, $Res Function(_$SetDarkModeImpl) then) =
      __$$SetDarkModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class __$$SetDarkModeImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$SetDarkModeImpl>
    implements _$$SetDarkModeImplCopyWith<$Res> {
  __$$SetDarkModeImplCopyWithImpl(
      _$SetDarkModeImpl _value, $Res Function(_$SetDarkModeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_$SetDarkModeImpl(
      null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetDarkModeImpl implements _SetDarkMode {
  const _$SetDarkModeImpl(this.isDarkMode);

  @override
  final bool isDarkMode;

  @override
  String toString() {
    return 'SettingEvent.setDarkMode(isDarkMode: $isDarkMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDarkModeImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDarkModeImplCopyWith<_$SetDarkModeImpl> get copyWith =>
      __$$SetDarkModeImplCopyWithImpl<_$SetDarkModeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode) setDarkMode,
    required TResult Function() getDarkMode,
  }) {
    return setDarkMode(isDarkMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode)? setDarkMode,
    TResult? Function()? getDarkMode,
  }) {
    return setDarkMode?.call(isDarkMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode)? setDarkMode,
    TResult Function()? getDarkMode,
    required TResult orElse(),
  }) {
    if (setDarkMode != null) {
      return setDarkMode(isDarkMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDarkMode value) setDarkMode,
    required TResult Function(_GetDarkMode value) getDarkMode,
  }) {
    return setDarkMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDarkMode value)? setDarkMode,
    TResult? Function(_GetDarkMode value)? getDarkMode,
  }) {
    return setDarkMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDarkMode value)? setDarkMode,
    TResult Function(_GetDarkMode value)? getDarkMode,
    required TResult orElse(),
  }) {
    if (setDarkMode != null) {
      return setDarkMode(this);
    }
    return orElse();
  }
}

abstract class _SetDarkMode implements SettingEvent {
  const factory _SetDarkMode(final bool isDarkMode) = _$SetDarkModeImpl;

  bool get isDarkMode;
  @JsonKey(ignore: true)
  _$$SetDarkModeImplCopyWith<_$SetDarkModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDarkModeImplCopyWith<$Res> {
  factory _$$GetDarkModeImplCopyWith(
          _$GetDarkModeImpl value, $Res Function(_$GetDarkModeImpl) then) =
      __$$GetDarkModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDarkModeImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$GetDarkModeImpl>
    implements _$$GetDarkModeImplCopyWith<$Res> {
  __$$GetDarkModeImplCopyWithImpl(
      _$GetDarkModeImpl _value, $Res Function(_$GetDarkModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDarkModeImpl implements _GetDarkMode {
  const _$GetDarkModeImpl();

  @override
  String toString() {
    return 'SettingEvent.getDarkMode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDarkModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode) setDarkMode,
    required TResult Function() getDarkMode,
  }) {
    return getDarkMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode)? setDarkMode,
    TResult? Function()? getDarkMode,
  }) {
    return getDarkMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode)? setDarkMode,
    TResult Function()? getDarkMode,
    required TResult orElse(),
  }) {
    if (getDarkMode != null) {
      return getDarkMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDarkMode value) setDarkMode,
    required TResult Function(_GetDarkMode value) getDarkMode,
  }) {
    return getDarkMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDarkMode value)? setDarkMode,
    TResult? Function(_GetDarkMode value)? getDarkMode,
  }) {
    return getDarkMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDarkMode value)? setDarkMode,
    TResult Function(_GetDarkMode value)? getDarkMode,
    required TResult orElse(),
  }) {
    if (getDarkMode != null) {
      return getDarkMode(this);
    }
    return orElse();
  }
}

abstract class _GetDarkMode implements SettingEvent {
  const factory _GetDarkMode() = _$GetDarkModeImpl;
}

/// @nodoc
mixin _$SettingState {
  bool get isDarkMode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call({bool isDarkMode, String message});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingStateImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingStateImplCopyWith(
          _$SettingStateImpl value, $Res Function(_$SettingStateImpl) then) =
      __$$SettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDarkMode, String message});
}

/// @nodoc
class __$$SettingStateImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateImpl>
    implements _$$SettingStateImplCopyWith<$Res> {
  __$$SettingStateImplCopyWithImpl(
      _$SettingStateImpl _value, $Res Function(_$SettingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
    Object? message = null,
  }) {
    return _then(_$SettingStateImpl(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SettingStateImpl implements _SettingState {
  const _$SettingStateImpl(
      {this.isDarkMode = false, this.message = "Something went wrong"});

  @override
  @JsonKey()
  final bool isDarkMode;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'SettingState(isDarkMode: $isDarkMode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingStateImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      __$$SettingStateImplCopyWithImpl<_$SettingStateImpl>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState({final bool isDarkMode, final String message}) =
      _$SettingStateImpl;

  @override
  bool get isDarkMode;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
