import 'package:flutter/material.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class AnnouncementSection extends StatelessWidget {
  const AnnouncementSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Pengumuman dari Founder",
            style: TypographyApp.text1.bold.black,
          ),
          Gap.h32,
          const AnnouncementItem(),
          Gap.h32,
          const AnnouncementItem(),
        ],
      ),
    );
  }
}

class AnnouncementItem extends StatelessWidget {
  const AnnouncementItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.images.indowiraLogo.image(
              fit: BoxFit.fitWidth,
              width: SizeApp.customHeight(32),
            ),
            Gap.w8,
            Text(
              "INDOWIRA",
              style: TypographyApp.text1.black.bold,
            ),
          ],
        ),
        Gap.h16,
        Text(
          "Marketers advertisers usually focus their efforts on the people responsible for making the purchase. In many cases, this is an effective approach but in other cases it can make for a totally useless marketing campaign.",
          style: TypographyApp.text1.thin.black,
        ),
        Gap.h16,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Assets.images.indowiraLogo.image(
                fit: BoxFit.fitWidth,
                width: SizeApp.customHeight(32),
              ),
            ),
            Gap.w8,
            Expanded(
              child: Text(
                "Alex Thomas",
                style: TypographyApp.text1.black.bold,
              ),
            ),
            Gap.w8,
            Text(
              "4 Feb 2020",
              style: TypographyApp.text2.grey,
            ),
          ],
        ),
        Gap.h16,
        const CustomDivider(),
      ],
    );
  }
}
