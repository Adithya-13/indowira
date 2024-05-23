import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';

class HeaderTransaction extends StatelessWidget {
  const HeaderTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      color: ColorApp.lightGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Uraian", style: TypographyApp.text1.black),
          Text("Tanggal", style: TypographyApp.text1.black),
          Text("Total", style: TypographyApp.text1.black),
          Text("Status", style: TypographyApp.text1.black),
        ],
      ),
    );
  }
}
