import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_apps_case/app/common/configs/enums/app_themes_enum.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
    : super(
        ThemeState(
          currentTheme: AppThemesEnum.main,
          themeMode: ThemeMode.system,
          brightness:
              WidgetsBinding.instance.platformDispatcher.platformBrightness,
        ),
      );

  void setTheme(AppThemesEnum theme) {
    emit(state.copyWith(currentTheme: theme));
  }

  void setThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
  }

  void updateSystemThemeMode() {
    if (state.themeMode == ThemeMode.system) {
      emit(state.copyWith());
    }
  }
}
