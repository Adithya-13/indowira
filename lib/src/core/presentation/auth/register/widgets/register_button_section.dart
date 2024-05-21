import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class RegisterButtonSection extends StatelessWidget {
  const RegisterButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ButtonWidget.primary(
          text: "DAFTAR",
          onTap: () {
            context.pushNamed(Routes.emailConfirmation.name);
          },
        ),
        Gap.h16,
        Center(
          child: Text(
            "Daftar dengan akun sosial media",
            style: TypographyApp.text1,
            textAlign: TextAlign.center,
          ),
        ),
        Gap.h16,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _loginWithSocmedButton(
              Assets.svgs.facebook.svg(),
              onTap: () {},
            ),
            Gap.w8,
            _loginWithSocmedButton(
              Assets.svgs.google.svg(),
              onTap: () {},
            ),
            Gap.w8,
            _loginWithSocmedButton(
              Assets.svgs.whatsapp.svg(),
              onTap: () {},
            ),
          ],
        ),
        Gap.h16,
        Center(
          child: GestureDetector(
            onTap: () {
              context.goNamed(Routes.login.name);
            },
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: "Sudah memiliki akun? ",
                  ),
                  TextSpan(
                    text: "Masuk",
                    style: TypographyApp.text1.blue.bold,
                  )
                ],
              ),
              style: TypographyApp.text1,
            ),
          ),
        ),
      ],
    );
  }

  Widget _loginWithSocmedButton(Widget logo, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: SizeApp.w64,
        height: SizeApp.h48,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: ColorApp.white,
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(color: ColorApp.grey),
        ),
        child: logo,
      ),
    );
  }
}
