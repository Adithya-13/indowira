import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/widgets/widgets.dart';

class AccountAndPages extends StatelessWidget {
  const AccountAndPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account & Apps"),
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
      body: PaddingWidget(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap.h16,
              GeneralInformationFormItem(
                title: "Account Facebook",
                controller: TextEditingController(),
                hintText: "facebook",
              ),
              Gap.h12,
              GeneralInformationFormItem(
                title: "Link",
                controller: TextEditingController(),
                hintText: "fb.com/iotask",
              ),
              Gap.h12,
              GeneralInformationFormItem(
                title: "Account Twitter",
                controller: TextEditingController(),
                hintText: "Twitter",
              ),
              Gap.h12,
              GeneralInformationFormItem(
                title: "Link",
                controller: TextEditingController(),
                hintText: "twitter.com/iotask",
              ),
              Gap.h12,
              GeneralInformationFormItem(
                title: "Account Instagram",
                controller: TextEditingController(),
                hintText: "slack",
              ),
              Gap.h12,
              GeneralInformationFormItem(
                title: "Link",
                controller: TextEditingController(),
                hintText: "instagram/account",
              ),
              Gap.h16,
              ButtonWidget.primary(text: "UPDATE", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
