import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class SyirkahBusinessSection extends StatelessWidget {
  const SyirkahBusinessSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Syirkah Bisnis-ku",
            style: TypographyApp.text1.black.bold,
          ),
          Gap.h16,
          Center(
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: ColorApp.grey,
                ),
              ),
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: SizeApp.customHeight(120),
                    child: AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorApp.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        height: SizeApp.customHeight(120),
                      ),
                    ),
                  ),
                  Gap.h16,
                  ChipWidget(
                      title: "Fnb",
                      color: ColorApp.blue,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 4,
                      ),
                      style: TypographyApp.text2),
                  Gap.h4,
                  Text(
                    "Asik Masak",
                    style: TypographyApp.text1.black,
                  ),
                  Gap.h8,
                  SizedBox(
                    width: 180,
                    child: ButtonWidget.primary(
                      text: "LIHAT BISNIS",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap.h16,
          Container(
            decoration: BoxDecoration(
              color: ColorApp.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            height: SizeApp.customHeight(209),
            child: const Center(
              child: Text(
                "Map",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
