import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/core/core.dart';

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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      "Buat Akun",
                      style: TypographyApp.headline3,
                    ),
                  ),
                  Gap.h16,
                  const RegisterTabSection(),
                  Gap.h16,
                  const TypeAccountSection(),
                  Gap.h16,
                  const RegisterFieldSection(),
                  Gap.h16,
                  const RegisterButtonSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
