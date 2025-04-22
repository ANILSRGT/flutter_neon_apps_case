import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:penta_core/penta_core.dart';

class CustomSafeArea extends StatelessWidget {
  const CustomSafeArea._({
    required this.child,
    this.isDark = false,
    this.top = true,
    this.bottom = true,
    this.left = true,
    this.right = true,
    this.backgroundColor = Colors.transparent,
  });

  factory CustomSafeArea.light({
    required Widget child,
    Color backgroundColor = Colors.transparent,
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
  }) {
    return CustomSafeArea._(
      top: top,
      backgroundColor: backgroundColor,
      bottom: bottom,
      left: left,
      right: right,
      child: child,
    );
  }

  factory CustomSafeArea.dark({
    required Widget child,
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    Color backgroundColor = Colors.transparent,
  }) {
    return CustomSafeArea._(
      isDark: true,
      backgroundColor: backgroundColor,
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: child,
    );
  }

  factory CustomSafeArea.byBrightness({
    required BuildContext context,
    required Widget child,
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    Color lightBackground = Colors.transparent,
    Color darkBackground = Colors.transparent,
  }) {
    final isDark = context.ext.theme.isDark;
    return CustomSafeArea._(
      isDark: isDark,
      backgroundColor: isDark ? darkBackground : lightBackground,
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: child,
    );
  }

  final bool isDark;
  final bool top;
  final bool bottom;
  final bool left;
  final bool right;
  final Color backgroundColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
      child: ColoredBox(
        color: backgroundColor,
        child: SafeArea(
          top: top,
          bottom: bottom,
          left: left,
          right: right,
          child: child,
        ),
      ),
    );
  }
}
