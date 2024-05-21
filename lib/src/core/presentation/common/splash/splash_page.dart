import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    safeRebuild(() {
      Future.delayed(
        const Duration(seconds: 3),
        () {
          context.goNamed(Routes.register.name);
        },
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.scaffold,
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Assets.svgs.splash.svg(),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeApp.w32),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: SizeApp.w16,
                vertical: SizeApp.w32,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorApp.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Assets.images.logo.image(
                        fit: BoxFit.fitWidth,
                        width: SizeApp.w40,
                      ),
                      Gap.w24,
                      Text(
                        "Indowira",
                        style: TypographyApp.headline1.red,
                      ),
                    ],
                  ),
                  Gap.h16,
                  Text(
                    "Aplikasi Management Komunitas yang mendorong Kewirausahaan, Kerjasama Usaha, Investasi & Charity",
                    style: TypographyApp.text1.grey,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Gap.customGapHeight(100)
        ],
      ),
    );
  }
}
