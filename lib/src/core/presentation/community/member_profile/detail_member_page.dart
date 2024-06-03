import 'package:flutter/material.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class DetailMemberPage extends StatelessWidget {
  const DetailMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Member"),
        iconTheme: const IconThemeData(color: ColorApp.grey),
        surfaceTintColor: ColorApp.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(8),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 1,
                color: ColorApp.grey,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Positioned.fill(
                    child: Assets.images.background.image(
                      fit: BoxFit.cover,
                    ),
                  ),
                  PaddingWidget(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap.h20,
                        Container(
                            // margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            width: SizeApp.customWidth(120),
                            height: SizeApp.customWidth(120),
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(120)),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 13, 0),
                                    width: SizeApp.customWidth(20),
                                    height: SizeApp.customWidth(20),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(24)),
                                    child: Stack(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              4, 4, 0, 0),
                                          width: SizeApp.customWidth(13),
                                          height: SizeApp.customWidth(13),
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(24)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Gap.h20,
                        Text(
                          "HERY PRIYABUDI",
                          style: TypographyApp.headline3.black,
                        ),
                        Gap.h8,
                        Text(
                          "UI/UX DESIGNER",
                          style: TypographyApp.text1.grey.fontSizeCustom(16),
                        ),
                        Gap.h32,
                        Row(
                          children: [
                            SocialMediaWidget(
                              icon:
                                  Assets.svgs.facebook.svg(color: ColorApp.red),
                            ),
                            Gap.w12,
                            SocialMediaWidget(
                              icon: Assets.svgs.path.svg(width: 2, height: 2),
                            ),
                            Gap.w12,
                            SocialMediaWidget(
                              icon:
                                  Assets.svgs.twitter.svg(width: 5, height: 5),
                            ),
                            Gap.w12,
                            SocialMediaWidget(
                              icon: Assets.svgs.linkedin.svg(width: 5),
                            ),
                          ],
                        ),
                        Gap.h20,
                      ],
                    ),
                  ),
                ],
              ),
              PaddingWidget(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Gap.h16,
                    Text(
                      'NIK',
                      style: TypographyApp.text1.bold.black,
                    ),
                    Text(
                      '123453463464',
                      style: TypographyApp.text2.grey,
                    ),
                    Gap.h16,
                    Text(
                      'Email',
                      style: TypographyApp.text1.bold.black,
                    ),
                    Text(
                      'hery@gmail.com',
                      style: TypographyApp.text2.grey,
                    ),
                    Gap.h16,
                    Text(
                      'Bidang Pekerjaan',
                      style: TypographyApp.text1.bold.black,
                    ),
                    Text(
                      'Technology',
                      style: TypographyApp.text2.grey,
                    ),
                    Gap.h16,
                    Text(
                      'Nama Perusahaan',
                      style: TypographyApp.text1.bold.black,
                    ),
                    Text(
                      'PT. Sejahtera',
                      style: TypographyApp.text2.grey,
                    ),
                    Gap.h16,
                    Text(
                      'Jabatan dalam Perusahaan',
                      style: TypographyApp.text1.bold.black,
                    ),
                    Text(
                      'Manager',
                      style: TypographyApp.text2.grey,
                    ),
                    Gap.h16,
                    Text(
                      'Nama Perusahaan',
                      style: TypographyApp.text1.bold.black,
                    ),
                    Text(
                      'PT. Sejahtera',
                      style: TypographyApp.text2.grey,
                    ),
                    Gap.h16,
                    Text(
                      'Jabatan dalam Perusahaan',
                      style: TypographyApp.text1.bold.black,
                    ),
                    Text(
                      'Manager',
                      style: TypographyApp.text2.grey,
                    ),
                    Gap.h24,
                    Text(
                      'Bio',
                      style: TypographyApp.text1.bold.black,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur. Ornare massa et ultrices dictum quis orci et. At quam amet aliquet at. Urna consequat sagittis tellus mauris risus',
                      style: TypographyApp.text2.grey,
                    ),
                    Gap.h24,
                    Text(
                      'Bio',
                      style: TypographyApp.text1.bold.black,
                    ),
                    Gap.h8,
                    Assets.images.maps.image(
                      fit: BoxFit.fitHeight,
                      height: 240,
                    ),
                    Gap.h20,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
