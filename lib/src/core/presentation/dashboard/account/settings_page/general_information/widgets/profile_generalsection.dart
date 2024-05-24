import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class ProfileGeneralSection extends StatelessWidget {
  const ProfileGeneralSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap.h32,
        // Section 1
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: Colors.grey,
              ),
            ),
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Text(
                  "SEE CARD MEMBER",
                  style: TypographyApp.text2.red.semiBold,
                ),
              ),
            )
          ],
        ),
        Gap.h32,
        ButtonWidget.outlined(
          width: 140,
          text: "Ubah Foto",
          onTap: () {},
        )
      ],
    );
  }
}
