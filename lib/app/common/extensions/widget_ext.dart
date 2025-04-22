import 'package:flutter/widgets.dart';

extension WidgetExt on Widget {
  _WidgetExt get appWidgetExt => _WidgetExt(this);
}

class _WidgetExt {
  const _WidgetExt(this.widget);

  final Widget widget;

  Widget paddingAll(double value) {
    return Padding(padding: EdgeInsets.all(value), child: widget);
  }

  Widget paddingSymmetric({double? vertical, double? horizontal}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: vertical ?? 0,
        horizontal: horizontal ?? 0,
      ),
      child: widget,
    );
  }

  Widget paddingOnly({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left ?? 0,
        top: top ?? 0,
        right: right ?? 0,
        bottom: bottom ?? 0,
      ),
      child: widget,
    );
  }
}
