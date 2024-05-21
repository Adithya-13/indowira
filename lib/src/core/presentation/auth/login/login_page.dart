import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/core/core.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      "Login",
                      style: TypographyApp.headline3,
                    ),
                  ),
                  Gap.h16,
                  const LoginFieldSection(),
                  Gap.h16,
                  const LoginButtonSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
