import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class FollowedCommunitySection extends StatelessWidget {
  const FollowedCommunitySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        PaddingWidget(
          child: Text(
            "Komunitas yang Anda ikuti",
            style: TypographyApp.text1.black.bold,
          ),
        ),
        Gap.h16,
        SizedBox(
          height: SizeApp.customHeight(208),
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(
              horizontal: SizeApp.w16,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: ColorApp.grey,
                  ),
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: SizeApp.customHeight(120),
                      child: AspectRatio(
                        aspectRatio: 1,
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
                  ],
                ),
              );
            },
          ),
        ),
        Gap.h16,
        const Center(
          child: ChipWidget(
            color: ColorApp.red,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            title: "Lihat Komunitas Lain",
          ),
        ),
      ],
    );
  }
}
