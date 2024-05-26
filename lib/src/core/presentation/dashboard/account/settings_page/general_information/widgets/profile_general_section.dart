import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/constants/themes/typography_app.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ProfileGeneralSection extends StatelessWidget {
  const ProfileGeneralSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap.h32,
        // Section 1
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: SizeApp.w72,
              height: SizeApp.w72,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                showCupertinoModalBottomSheet(
                  context: context,
                  expand: false,
                  builder: (context) => Material(
                    child: SafeArea(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 5,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: ColorApp.lightGrey,
                              ),
                            ),
                            Gap.h20,
                            Container(
                              // padding: EdgeInsets.all(20),
                              width: SizeApp.customWidth(302),
                              height: SizeApp.customHeight(163),
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(SizeApp.w12),
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xFFC00000), // #C00000
                                          Color(0xFF980C0C), // #980C0C
                                        ],
                                        stops: [0.0199, 1.0],
                                        transform: GradientRotation(
                                            99.49 * 3.1415927 / 180),
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16),
                                      ),
                                    ),
                                    alignment: Alignment.bottomCenter,
                                    width: double.infinity,
                                    height: SizeApp.customHeight(104),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "BARRY AMSTRONG",
                                          style: TypographyApp.text1.white.bold,
                                        ),
                                        Text(
                                          "NIK 1213 1314 1314",
                                          style: TypographyApp.text2.white,
                                        ),
                                        Gap.customGapHeight(5),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: SizeApp.h24,
                                              height: SizeApp.h24,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "valid thru",
                                                  style: TypographyApp
                                                      .subText1.white,
                                                ),
                                                Text(
                                                  "2024",
                                                  style: TypographyApp
                                                      .subText1.white.bold,
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(SizeApp.w12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Indowira",
                                          style: TypographyApp.text1.red.bold,
                                        ),
                                        Assets.images.logo.image(
                                          fit: BoxFit.fitHeight,
                                          height: SizeApp.h32,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Gap.h20,
                            Text(
                              "Card Member",
                              style: TypographyApp.text1.grey,
                            ),
                            Gap.h20,
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Text(
                  "SEE CARD MEMBER",
                  style: TypographyApp.text2.red.semiBold,
                ),
              ),
            )
          ],
        ),
        Gap.h32,
        ButtonWidget.outlined(
          width: SizeApp.customWidth(140),
          text: "Ubah Foto",
          onTap: () {},
        )
      ],
    );
  }
}
