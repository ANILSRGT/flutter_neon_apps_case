import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neon_apps_case/app/common/configs/theme/app_colors.dart';
import 'package:neon_apps_case/app/common/cubits/theme/theme_cubit.dart';

abstract base class IAppTheme {
  AppColors get colors;
  ThemeData getThemeData(bool isDark);
}

extension IAppThemeContextX on BuildContext {
  _IAppThemeContextX get appThemeExt => _IAppThemeContextX(this);
}

final class _IAppThemeContextX {
  const _IAppThemeContextX(this._context);
  final BuildContext _context;

  AppColors get appColors =>
      _context.watch<ThemeCubit>().state.currentTheme.theme.colors;
  AppColors get appColorsRead =>
      _context.read<ThemeCubit>().state.currentTheme.theme.colors;
}
