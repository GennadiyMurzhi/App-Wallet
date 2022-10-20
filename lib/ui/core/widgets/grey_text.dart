import 'package:flutter/material.dart';

///text widget with replace text style with grey color
class GreyText extends StatelessWidget {
  ///pass text to display him with grey color
  const GreyText(
    this.text, {
    this.maxLines,
    this.fontSize,
    required this.needEllipsis,
  });

  ///An optional maximum number of line
  final int? maxLines;

  ///An optional font size
  final double? fontSize;

  ///use if need ellipsis
  final bool needEllipsis;

  ///text
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: fontSize,
            color: const Color(0xFF8A8A8D),
            overflow: needEllipsis ? TextOverflow.ellipsis : null,
          ),
    );
  }
}
