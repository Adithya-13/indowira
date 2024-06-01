import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';

class MentoringSchedule extends StatelessWidget {
  final String title;
  final String? date;
  final bool close;

  const MentoringSchedule({
    required this.title,
    required this.close,
    this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(13),
        width: double.infinity,
        height: SizeApp.h72,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: Colors.grey.shade200)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TypographyApp.text1.black.bold,
                  ),
                  // Gap.h8,
                  Text(
                    "Tanggal 12/12/2004",
                    style: TypographyApp.text2.grey,
                  )
                ],
              ),
            ),
            //OPSIONAL
            close
                ? Container(
                    alignment: Alignment.center,
                    width: SizeApp.w48,
                    height: SizeApp.h20,
                    color: Colors.grey.shade300,
                    child: Text(
                      "Close",
                      style: TypographyApp.subText1.grey.bold,
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
