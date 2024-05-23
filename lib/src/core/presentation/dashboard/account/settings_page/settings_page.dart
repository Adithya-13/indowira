import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/core/core.dart';
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
          ),
          CustomDivider(),
          SettingsListTile(
            title: 'Account & Apps',
            desc: 'Connected social ac',
          ),
          CustomDivider(),
          SettingsListTile(
            title: 'Security',
            desc: 'Outdoor advertising is a low budget',
          ),
          CustomDivider(),
          SettingsListTile(
            title: 'Notification',
            desc: 'Outdoor advertising is a low budget',
          ),
          CustomDivider(),
        ],
      ),
    );
  }
}
