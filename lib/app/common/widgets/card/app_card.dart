import 'package:flutter/material.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:penta_core/penta_core.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    required this.child,
    super.key,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
  });

  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: context.appThemeExt.appColors.isabelline.byBrightness(
          context.ext.theme.isDark,
        ),
        borderRadius: borderRadius ?? AppValues.md.ext.radius.border.all,
        border: Border.all(
          color:
              borderColor ??
              context.appThemeExt.appColors.grey.light.withValues(alpha: 0.2),
          width: 0.5,
        ),
      ),
      child: child,
    );
  }
}
