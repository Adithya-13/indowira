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
        children: [
          Gap.w8,
          Expanded(
            child: Text("Uraian", style: TypographyApp.text1.black),
          ),
          Gap.w8,
          Expanded(
            child: Text("Tanggal", style: TypographyApp.text1.black),
          ),
          Gap.w8,
          Expanded(
            child: Text("Total", style: TypographyApp.text1.black),
          ),
          Gap.w8,
          Expanded(
            child: Text("Status", style: TypographyApp.text1.black),
          ),
          Gap.w8,
        ],
      ),
    );
  }
}
