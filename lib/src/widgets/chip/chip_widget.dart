
import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';

class ChipWidget extends StatelessWidget {
  final String title;
  final EdgeInsets? padding;
  final Color color;
  final TextStyle? style;
  const ChipWidget({
    super.key,
    required this.title,
    this.padding,
    required this.color,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: color.withOpacity(0.1),
      ),
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
      child: Text(
        title,
        style: style?.copyWith(color: color) ??
            TypographyApp.text1.copyWith(color: color),
      ),
    );
  }
}