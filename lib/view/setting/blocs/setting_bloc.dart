import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample/core/init/notifier/theme_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/app_contants.dart';

part 'setting_event.dart';

part 'setting_bloc.freezed.dart';

part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingState.initial()) {
    on<SettingEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
            setDarkMode: (bool isDarkMode) => {_setDarkMode(emit, isDarkMode)},
            getDarkMode: () => {_getDarkMode(emit)});
      },
    );
  }

  Future<void> _setDarkMode(Emitter<SettingState> emit, bool isDarkMode) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(AppConstants.darkModeOn, isDarkMode);
    emit(const SettingState(message: "Changed Settings"));
  }

  Future<void> _getDarkMode(Emitter<SettingState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    final darkMode = prefs.getBool(AppConstants.darkModeOn);
    emit(SettingState(isDarkMode: darkMode ?? false));
  }

  SettingState getSuccessState(String message) {
    return state.copyWith(
      message: message,
    );
  }
}
