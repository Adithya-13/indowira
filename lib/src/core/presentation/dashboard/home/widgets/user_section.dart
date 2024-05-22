import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class UserSection extends StatelessWidget {
  const UserSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Hery",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.w8,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: ColorApp.lightGrey,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                child: Text(
                  "USER",
                  style: TypographyApp.text2.grey,
                ),
              ),
            ],
          ),
          Gap.h12,
          Text(
            "Saya orang yang BERANI BERKOMUNITAS",
            style: TypographyApp.text1,
          ),
          Gap.h12,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorApp.yellow,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  style: TypographyApp.text1.white,
                  "Upgrade Plan",
                ),
                Gap.w8,
                const Icon(
                  Icons.star_rounded,
                  color: ColorApp.white,
                ),
              ],
            ),
          ),
          Gap.h16,
        ],
      ),
    );
  }
}
