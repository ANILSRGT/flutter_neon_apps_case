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
    this.onTap,
  });

  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final Widget child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
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
      ),
    );
  }
}
