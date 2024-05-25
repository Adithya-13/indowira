import 'package:flutter/material.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/core/presentation/dashboard/account/settings_page/settings_page.dart';
import 'package:indowira/src/core/presentation/dashboard/account/transaksiku_page/transaksiku_page.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class OptionProfileSection extends StatelessWidget {
  const OptionProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
        child: SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap.h20,
          OptionProfileListTile(
            icon: Assets.icons.account,
            title: "MyApp",
            widget: const SettingsPage(),
          ),
          Gap.h12,
          OptionProfileListTile(
            icon: Assets.icons.transaction,
            title: "Transaksiku",
            widget: const TransaksikuPage(),
          ),
          Gap.h12,
          OptionProfileListTile(
            icon: Assets.icons.settings,
            title: "Settings",
            widget: const SettingsPage(),
          ),
          Gap.h12,
          OptionProfileListTile(
            icon: Assets.icons.logout,
            title: "Logout",
            widget: const SettingsPage(),
            hasRightArrow: false,
          ),
        ],
      ),
    ));
  }
}

class OptionProfileListTile extends StatelessWidget {
  final SvgGenImage icon;
  final String title;
  final bool hasRightArrow;
  final Widget widget;
  const OptionProfileListTile(
      {super.key,
      required this.icon,
      required this.title,
      this.hasRightArrow = true,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: ColorApp.scaffold,
        child: Row(
          children: [
            icon.svg(
              color: ColorApp.black,
              fit: BoxFit.fitWidth,
              width: SizeApp.w16,
            ),
            Gap.w8,
            Text(
              title,
              style: TypographyApp.text1.fontSizeCustom(16).black,
            ),
            const Spacer(),
            if (hasRightArrow)
              const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              )
          ],
        ),
      ),
    );
  }
}
