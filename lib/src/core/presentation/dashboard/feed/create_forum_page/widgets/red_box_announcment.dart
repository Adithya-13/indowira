import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';

class RedBoxAnnouncement extends StatelessWidget {
  final String headings;
  final String desc;
  final double height;

  const RedBoxAnnouncement({
    required this.headings,
    required this.desc,
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.maxFinite,
      height: SizeApp.customHeight(height),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFC00000), // #C00000
            Color(0xFF980C0C), // #980C0C
          ],
          stops: [0.0199, 1.0],
          transform: GradientRotation(99.49 * 3.1415927 / 180),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headings,
            style: TypographyApp.text1.white,
          ),
          Gap.h16,
          Text(
            desc,
            style: TypographyApp.text1.white,
          )
        ],
      ),
    );
  }
}
