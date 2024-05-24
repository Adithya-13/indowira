import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/core/presentation/dashboard/account/settings_page/general_information/generalInformation_page.dart';
import 'package:indowira/src/widgets/widgets.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        iconTheme: const IconThemeData(color: ColorApp.grey),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(8),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 1,
                color: ColorApp.grey,
              ),
            ],
          ),
        ),
      ),
      body: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsListTile(
            title: 'General Information',
            desc: 'Profile foto, name & Language',
            widget: GeneralInformation(),
          ),
          CustomDivider(),
          SettingsListTile(
            title: 'Account & Apps',
            desc: 'Connected social ac',
            widget: GeneralInformation(),
          ),
          CustomDivider(),
          SettingsListTile(
            title: 'Security',
            desc: 'Outdoor advertising is a low budget',
            widget: GeneralInformation(),
          ),
          CustomDivider(),
          SettingsListTile(
            title: 'Notification',
            desc: 'Outdoor advertising is a low budget',
            widget: GeneralInformation(),
          ),
          CustomDivider(),
        ],
      ),
    );
  }
}
