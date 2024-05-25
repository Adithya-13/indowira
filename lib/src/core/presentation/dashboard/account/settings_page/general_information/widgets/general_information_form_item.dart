import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class GeneralInformationFormItem extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String title;

  const GeneralInformationFormItem({
    required this.title,
    required this.controller,
    this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TypographyApp.text1.black,
        ),
        Gap.h12,
        InputFormWidget(
          controller: controller,
          hintText: hintText,
        ),
      ],
    );
  }
}

class ListInputExeption extends StatelessWidget {
  final String title;
  final String? hintText;
  final Widget? icon;

  const ListInputExeption({
    required this.title,
    this.hintText,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TypographyApp.text1.black,
        ),
        Gap.h16,
        InputFormWidget(
          controller: TextEditingController(),
          maxLines: 6,
        ),
      ],
    );
  }
}

class ListInputMap extends StatelessWidget {
  final String title;
  final String? hintText;
  final Widget? icon;

  const ListInputMap({
    required this.title,
    this.hintText,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TypographyApp.text1.black,
        ),
        Gap.h16,
        InputFormWidget(
          controller: TextEditingController(),
          hintText: hintText,
          prefix: icon,
        )
      ],
    );
  }
}
