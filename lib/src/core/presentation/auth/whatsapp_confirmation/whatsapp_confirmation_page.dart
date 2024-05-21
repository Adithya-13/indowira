import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class WhatsappConfirmationPage extends StatelessWidget {
  const WhatsappConfirmationPage({super.key});

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
                        "Konfirmasi WhatsApp Anda",
                        style: TypographyApp.headline3,
                      ),
                    ),
                    Gap.h16,
                    Center(
                      child: Text(
                        "Enter 6-digits code",
                        style: TypographyApp.text1,
                      ),
                    ),
                    Gap.h8,
                    OtpTextField(
                      numberOfFields: 6,
                      styles: [
                        TypographyApp.text1,
                        TypographyApp.text1,
                        TypographyApp.text1,
                        TypographyApp.text1,
                        TypographyApp.text1,
                        TypographyApp.text1,
                      ],
                      showFieldAsBox: true,
                      borderRadius: BorderRadius.circular(8.r),
                      fillColor: ColorApp.lightGrey,
                      filled: true,
                      borderColor: ColorApp.lightGrey,
                      cursorColor: ColorApp.grey,
                      enabledBorderColor: ColorApp.lightGrey,
                      focusedBorderColor: ColorApp.lightGrey,
                      disabledBorderColor: ColorApp.lightGrey,
                      onCodeChanged: (String code) {},
                      onSubmit: (String verificationCode) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Verification Code"),
                                content:
                                    Text('Code entered is $verificationCode'),
                              );
                            });
                      }, // end onSubmit
                    ),
                    Gap.h32,
                    Row(
                      children: [
                        ButtonWidget.secondary(
                          text: "KEMBALI",
                          onTap: () {
                            context.pop();
                          },
                        ),
                        const Spacer(),
                        ButtonWidget.primary(
                          text: "SELANJUTNYA",
                          onTap: () {
                            context.goNamed(Routes.home.name);
                          },
                        ),
                      ],
                    ),
                    Gap.h20,
                    Center(
                      child: Text(
                        "Tidak menerima konfirmasi whatsapp?",
                        style: TypographyApp.text1,
                      ),
                    ),
                    Gap.h8,
                    Center(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Kirim Ulang",
                          style: TypographyApp.text1.red.bold,
                        ),
                      ),
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
