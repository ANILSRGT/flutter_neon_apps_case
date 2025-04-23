import 'package:flutter/material.dart';

class FocusableWidget extends StatefulWidget {
  const FocusableWidget({
    required this.focusNode,
    required this.builder,
    super.key,
  });

  final FocusNode focusNode;
  final Widget Function(bool isFocused) builder;

  @override
  State<FocusableWidget> createState() => FocusableWidgetState();
}

class FocusableWidgetState extends State<FocusableWidget> {
  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_onFocusChange);
  }

  @override
  void didUpdateWidget(covariant FocusableWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    widget.focusNode.removeListener(_onFocusChange);
    widget.focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_onFocusChange);
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(widget.focusNode.hasFocus);
  }
}
