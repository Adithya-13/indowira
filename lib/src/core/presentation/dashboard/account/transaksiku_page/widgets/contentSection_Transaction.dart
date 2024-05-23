import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/constants/themes/typography_app.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';

class RowEachSection extends StatelessWidget {
  const RowEachSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Kelas Masak",
              style: TypographyApp.text1.grey.fontSizeCustom(13)),
          Text("12/12/2003",
              style: TypographyApp.text1.grey.fontSizeCustom(13)),
          Text("Rp 150.000",
              style: TypographyApp.text1.grey.fontSizeCustom(13)),
          Text("Berhasil", style: TypographyApp.text1.green.fontSizeCustom(13)),
        ],
      ),
    );
  }
}
