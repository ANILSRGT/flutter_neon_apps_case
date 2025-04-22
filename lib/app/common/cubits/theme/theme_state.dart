part of 'theme_cubit.dart';

class ThemeState extends Equatable {
  const ThemeState({
    required this.currentTheme,
    required this.themeMode,
    required this.brightness,
  });

  final AppThemesEnum currentTheme;
  final ThemeMode themeMode;
  final Brightness brightness;

  @override
  List<Object?> get props => [currentTheme, themeMode, brightness];

  ThemeState copyWith({AppThemesEnum? currentTheme, ThemeMode? themeMode}) {
    final newThemeMode = themeMode ?? this.themeMode;
    final newBrightness =
        newThemeMode == ThemeMode.system
            ? WidgetsBinding.instance.platformDispatcher.platformBrightness
            : (newThemeMode == ThemeMode.light
                ? Brightness.light
                : Brightness.dark);
    return ThemeState(
      currentTheme: currentTheme ?? this.currentTheme,
      themeMode: themeMode ?? this.themeMode,
      brightness: newBrightness,
    );
  }
}
