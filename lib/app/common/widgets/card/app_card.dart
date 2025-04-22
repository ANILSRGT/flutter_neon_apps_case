import 'package:flutter/material.dart';
import 'package:neon_apps_case/app/common/configs/theme/i_app_theme.dart';
import 'package:penta_core/penta_core.dart';

class AppCard extends StatelessWidget {
  const AppCard({
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: context.appThemeExt.appColors.isabelline.byBrightness(
          context.ext.theme.isDark,
        ),
        borderRadius: borderRadius ?? AppValues.md.ext.radius.border.all,
      ),
      child: const Text('data'),
    );
  }
}
