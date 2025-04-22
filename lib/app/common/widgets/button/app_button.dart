import 'package:flutter/material.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:penta_core/penta_core.dart';

class AppButton extends StatelessWidget {
  const AppButton._({
    required this.onPressed,
    required this.child,
    this.backgroundColor,
    this.foregroundColor,
    this.borderRadius,
  });

  factory AppButton.normal({
    required VoidCallback? onPressed,
    required String text,
    Color? backgroundColor,
    Color? foregroundColor,
    BorderRadius? borderRadius,
  }) {
    return AppButton._(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      borderRadius: borderRadius,
      child: Text(text),
    );
  }

  final VoidCallback? onPressed;
  final Widget child;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            backgroundColor ?? context.appThemeExt.appColors.primary,
        foregroundColor:
            foregroundColor ?? context.appThemeExt.appColors.primary.onColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? AppValues.sm.ext.radius.border.all,
        ),
      ),
      child: child,
    );
  }
}
