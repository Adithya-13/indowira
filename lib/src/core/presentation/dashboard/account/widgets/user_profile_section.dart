import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class UserProfileSection extends StatelessWidget {
  const UserProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "FREE PLAN",
            style: TypographyApp.text1.black.red,
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Gap.h8,
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    width: 120,
                    height: 120,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        textAlign: TextAlign.left,
                        "Selamat Datang",
                        style:
                            TypographyApp.text1.fontSizeCustom(12).normal.grey),
                    Gap.h4,
                    Text("HERY PRIYABUDI",
                        style: TypographyApp.headline3
                            .fontSizeCustom(16)
                            .normal
                            .black
                            .bold),
                    Gap.h12,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: ColorApp.lightGrey,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      child: Text(
                        "USER",
                        style: TypographyApp.text2.fontSizeCustom(16).grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap.h8,
          Gap.h12,
        ],
      ),
    );
  }
}
