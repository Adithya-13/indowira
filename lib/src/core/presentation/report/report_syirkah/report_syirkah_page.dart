import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/app_routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class ReportSyirkahPage extends StatelessWidget {
  const ReportSyirkahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Laporan",
          style: TypographyApp.text1.black,
          textAlign: TextAlign.center,
        ),
        iconTheme: const IconThemeData(color: ColorApp.grey),
        backgroundColor: ColorApp.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: ColorApp.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        surfaceTintColor: ColorApp.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(8),
          child: CustomDivider(),
        ),
      ),
      backgroundColor: ColorApp.white,
      body: SafeArea(
        child: PaddingWidget(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Gap.h16,
                Text(
                  "Laporan Syirkah Antar Anggota Komunitas",
                  style: TypographyApp.text1.black.fontSizeCustom(18),
                ),
                Gap.h8,
                Text(
                  "Berikut ini adalah daftar Pengurus, Member dan Iuran Keanggotaan Komunitas Anda:",
                  style: TypographyApp.text2.grey,
                ),
                Gap.h16,
                Row(
                  children: [
                    ButtonWidget.primary(
                      text: "Download PDF",
                      onTap: () {},
                    ),
                    const Spacer(),
                  ],
                ),
                Gap.h16,
                const SyirkahCard(),
                Gap.h16,
                const SyirkahCard(),
                Gap.h16,
                const SyirkahCard(),
                Gap.h16,
                const SyirkahCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SyirkahCard extends StatelessWidget {
  final bool isWithBorder;
  const SyirkahCard({
    super.key,
    this.isWithBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed(Routes.reportSyirkahDetail.name);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: ColorApp.white,
          border: isWithBorder ? Border.all(color: ColorApp.divider) : null,
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Assets.images.masakAsikLogo.image(
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              Gap.w8,
                              Expanded(
                                child: Text(
                                  'Bakso Mwantab',
                                  style: TypographyApp.text1.black,
                                ),
                              ),
                            ],
                          ),
                          Gap.h8,
                          Text(
                            'Level 0',
                            style: TypographyApp.text2.red,
                          ),
                          Gap.h4,
                          ChipWidget(
                            title: 'Baru Memulai Usaha',
                            color: ColorApp.red,
                            style: TypographyApp.text2.red,
                          ),
                          Gap.h4,
                          Text(
                            'Makanan/Kuliner',
                            style: TypographyApp.text2.grey,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Valuasi Usaha',
                          style: TypographyApp.text2.black,
                        ),
                        Gap.h4,
                        ButtonWidget(
                          buttonType: ButtonType.primary,
                          text: '30 Juta',
                          color: ColorApp.green,
                          focusColor: ColorApp.green.withOpacity(0.1),
                        ),
                        Gap.h4,
                        Text(
                          '100 lembar saham',
                          style: TypographyApp.subText1.grey,
                        ),
                        Gap.h4,
                        Text(
                          '@ 1juta/lembar+',
                          style: TypographyApp.subText1.grey,
                        ),
                      ],
                    ),
                  ],
                ),
                Gap.h8,
                Row(
                  children: [
                    const Icon(
                      Icons.pin_drop_outlined,
                      color: ColorApp.grey,
                    ),
                    Gap.w4,
                    Text(
                      'Jl. Darmajaya, Jakarta Timur',
                      style: TypographyApp.text2.grey,
                    ),
                  ],
                ),
                Gap.h8,
                const CustomDivider(),
                Gap.h8,
              ],
            ),
            if (isWithBorder)
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '5 PESYIRKAH',
                      style: TypographyApp.text1.black,
                    ),
                    Gap.w16,
                    const Icon(Icons.chevron_right),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
