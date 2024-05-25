import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';

class TransactionListTile extends StatelessWidget {
  const TransactionListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
      child: Row(
        children: [
          Gap.w8,
          Expanded(
            child: Text(
              "Kelas Masak",
              style: TypographyApp.text1.grey.fontSizeCustom(13),
            ),
          ),
          Gap.w8,
          Expanded(
            child: Text(
              "12/12/2003",
              style: TypographyApp.text1.grey.fontSizeCustom(13),
            ),
          ),
          Gap.w8,
          Expanded(
            child: Text(
              "Rp 150.000",
              style: TypographyApp.text1.grey.fontSizeCustom(13),
            ),
          ),
          Gap.w8,
          Expanded(
            child: Text(
              "Berhasil",
              style: TypographyApp.text1.green.fontSizeCustom(13),
            ),
          ),
          Gap.w8,
        ],
      ),
    );
  }
}
