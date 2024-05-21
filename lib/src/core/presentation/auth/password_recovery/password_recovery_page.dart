import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/widgets/widgets.dart';

class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Padding(
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
                        "Password Recovery",
                        style: TypographyApp.headline3,
                      ),
                    ),
                    Gap.h16,
                    InputFormWidget(
                      controller: TextEditingController(),
                      hintText: "Email",
                    ),
                    Gap.h16,
                    ButtonWidget.primary(
                      text: "KIRIM KONFIRMASI",
                      onTap: () {
                        context.pop();
                      },
                    ),
                  ],
                ),
              ),
            ),
            Gap.h40,
          ],
        ),
      ),
    );
  }
}
