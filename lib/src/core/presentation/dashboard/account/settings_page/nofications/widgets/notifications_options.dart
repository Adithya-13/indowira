import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/core/presentation/dashboard/account/settings_page/nofications/notifications_page.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';

class NotificationOptions extends StatelessWidget {
  final String title;
  final String desc;

  const NotificationOptions({
    required this.title,
    required this.desc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorApp.scaffold,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(title, style: TypographyApp.headline3.fontSizeCustom(15)),
                Gap.h4,
                Text(
                  desc,
                  style: TypographyApp.text1,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          ToggleSwitch(),
          Gap.h16
        ],
      ),
    );
  }
}
