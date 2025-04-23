import 'package:flutter/material.dart';
import 'package:penta_core/penta_core.dart';

class DetailText extends StatelessWidget {
  const DetailText({required this.title, required this.content, super.key});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$title:\t',
        style: context.ext.theme.textTheme.titleMedium?.copyWith(
          height: 1,
          fontWeight: FontWeight.w500,
        ),
        children: [
          TextSpan(
            text: content,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
