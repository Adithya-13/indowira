import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/size_app.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/constants/themes/typography_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class ListInput extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String title;

  const ListInput({
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
  final double height;

  const ListInputExeption({
    required this.title,
    this.hintText,
    this.icon,
    required this.height,
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
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: icon,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12, vertical: height),
            filled: true,
            fillColor: ColorApp.white,
            hintStyle: TypographyApp.text1.grey,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(
                color: ColorApp.lightGrey,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
