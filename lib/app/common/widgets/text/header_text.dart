import 'package:flutter/material.dart';
import 'package:penta_core/penta_core.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.ext.theme.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
