import 'package:flutter/material.dart';
import 'package:neon_apps_case/app/common/configs/theme/app_colors.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:penta_core/penta_core.dart';

final class MainTheme extends IAppTheme {
  @override
  AppColors get colors => AppColors(
    primary: OnColor(
      value: const Color(0xFFeb012a),
      onColor: const Color(0xFFF7F7F7),
    ),
    background: BrightnessOnColor(
      light: OnColor(
        value: const Color(0xFFF7F7F7),
        onColor: const Color(0xFF212121),
      ),
      dark: OnColor(
        value: const Color(0xFF212121),
        onColor: const Color(0xFFF7F7F7),
      ),
    ),
    grey: BrightnessOnColor(
      light: OnColor(
        value: const Color(0xFF9b9b9b),
        onColor: const Color(0xFF212121),
      ),
      dark: OnColor(
        value: const Color(0xFF909090),
        onColor: const Color(0xFFF7F7F7),
      ),
    ),
    white: BrightnessOnColor(
      light: OnColor(
        value: const Color(0xFFF7F7F7),
        onColor: const Color(0xFF212121),
      ),
      dark: OnColor(
        value: const Color(0xFF212121),
        onColor: const Color(0xFFF7F7F7),
      ),
    ),
    isabelline: BrightnessOnColor(
      light: OnColor(
        value: const Color(0xFFf1efef),
        onColor: const Color(0xFF212121),
      ),
      dark: OnColor(
        value: const Color(0xFF353434),
        onColor: const Color(0xFFf1efef),
      ),
    ),
  );

  @override
  ThemeData getThemeData(bool isDark) {
    return ThemeData(
      useMaterial3: true,
      brightness: isDark ? Brightness.dark : Brightness.light,
      primaryColor: colors.primary,
      scaffoldBackgroundColor: colors.background.byBrightness(isDark),
      textTheme: _getTextTheme(isDark),
      appBarTheme: _getAppBarTheme(isDark),
    );
  }

  TextTheme _getTextTheme(bool isDark) {
    return const TextTheme(
      displayLarge: TextStyle(fontSize: 57),
      displayMedium: TextStyle(fontSize: 45),
      displaySmall: TextStyle(fontSize: 36),
      headlineLarge: TextStyle(fontSize: 32),
      headlineMedium: TextStyle(fontSize: 28),
      headlineSmall: TextStyle(fontSize: 24),
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      labelSmall: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
      bodyLarge: TextStyle(fontSize: 16),
      bodyMedium: TextStyle(fontSize: 14),
      bodySmall: TextStyle(fontSize: 12),
    ).apply(
      bodyColor: colors.background.byBrightness(isDark).onColor,
      displayColor: colors.background.byBrightness(isDark).onColor,
    );
  }

  AppBarTheme _getAppBarTheme(bool isDark) => AppBarTheme(
    elevation: 0,
    centerTitle: true,
    titleTextStyle: _getTextTheme(isDark).titleLarge?.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 19,
      color: colors.background.byBrightness(isDark).onColor,
    ),
    surfaceTintColor: Colors.transparent,
    shadowColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    foregroundColor: colors.background.byBrightness(isDark).onColor,
  );
}
