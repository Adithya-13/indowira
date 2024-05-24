import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/constants/themes/typography_app.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class SettingsListTile extends StatelessWidget {
  final String title;
  final String desc;
  final Widget widget;

  const SettingsListTile(
      {super.key,
      required this.title,
      required this.desc,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget),
          );
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TypographyApp.headline3.fontSizeCustom(15)),
              Gap.h4,
              Text(desc, style: TypographyApp.text1),
            ],
          ),
        ),
      ),
    );
  }
}
