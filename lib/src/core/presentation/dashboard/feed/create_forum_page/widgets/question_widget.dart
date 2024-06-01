import 'package:flutter/material.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        height: SizeApp.h96,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: SizeApp.w48,
              height: SizeApp.h20,
              color: Colors.grey,
            ),
            Gap.w20,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1 hari yang lalu",
                  style: TypographyApp.text2.grey,
                ),
                Gap.customGapHeight(3),
                Text(
                  "Apa Saja syarat Mendapatkan \nlisensi logo bisnis",
                  style: TypographyApp.text2.black,
                  maxLines: 2,
                ),
              ],
            ),
            Gap.w20,
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Assets.icons.comment.svg(color: Colors.grey),
                Gap.w12,
                Text(
                  "12",
                  style: TypographyApp.text2.grey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
