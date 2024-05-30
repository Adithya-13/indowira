import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class SecurityPages extends StatelessWidget {
  const SecurityPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Security"),
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
                title: "Current Password",
                controller: TextEditingController(),
                hintText: "Enter your password",
              ),
              Gap.h12,
              GeneralInformationFormItem(
                title: "New Password",
                controller: TextEditingController(),
                hintText: "Enter new password",
              ),
              Gap.h12,
              Text(
                "Security Questions",
                style: TypographyApp.text1.black.bold.fontSizeCustom(16),
              ),
              Gap.h12,
              GeneralInformationFormItem(
                title: "Question #1",
                controller: TextEditingController(),
                hintText: "Please select quetion",
              ),
              Gap.h12,
              GeneralInformationFormItem(
                title: "Answer",
                controller: TextEditingController(),
                hintText: "Enter your answer",
              ),
              Gap.h12,
              GeneralInformationFormItem(
                title: "Question #2",
                controller: TextEditingController(),
                hintText: "Please select quetion",
              ),
              Gap.h12,
              GeneralInformationFormItem(
                title: "Answer",
                controller: TextEditingController(),
                hintText: "Enter your answer",
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
