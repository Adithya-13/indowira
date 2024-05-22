import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class BusinessThreatSection extends StatelessWidget {
  const BusinessThreatSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap.h16,
          Text(
            "Kendala Usahaku",
            style: TypographyApp.text1.black.bold,
          ),
          Gap.h12,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                "Perbankan dan Keuangan Syariah",
                "Coach dan Marketing",
                "Konsultan Branding",
                "Digital Marketing"
              ].map(
                (title) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: ChipWidget(
                      color: ColorApp.pink,
                      title: title,
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          Gap.h12,
        ],
      ),
    );
  }
}
