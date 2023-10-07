part of 'setting_bloc.dart';


@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.setDarkMode(bool isDarkMode) = _SetDarkMode;
  const factory SettingEvent.getDarkMode() = _GetDarkMode;
}
