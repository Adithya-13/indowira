import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/widgets/widgets.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeApp.w12),
            child: Container(
              decoration: BoxDecoration(
                color: ColorApp.white,
                borderRadius: BorderRadius.circular(8.r),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: SizeApp.w16, vertical: SizeApp.h32),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Choose a Language",
                      style: TypographyApp.headline3,
                    ),
                    Gap.h16,
                    Row(
                      children: [
                        Expanded(
                          child: ButtonWidget.outlined(
                            text: "English",
                            onTap: () {},
                          ),
                        ),
                        Gap.w16,
                        Expanded(
                          child: ButtonWidget.outlined(
                            text: "Spanish",
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
