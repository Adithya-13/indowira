import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/constants/themes/typography_app.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';

class TransactionSection extends StatelessWidget {
  final String section;

  const TransactionSection({
    required this.section,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          color: ColorApp.midGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap.w16,
              Text(section, style: TypographyApp.text1.black.bold),
            ],
          ),
        ),
        const RowEachSection(),
        const RowEachSection(),
        const RowEachSection(),
      ],
    );
  }
}
