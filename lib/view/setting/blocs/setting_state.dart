part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default(false) bool isDarkMode,
    @Default("Something went wrong") String message,
  }) = _SettingState;

  factory SettingState.initial() => const SettingState(
        isDarkMode: false,
      );
}
