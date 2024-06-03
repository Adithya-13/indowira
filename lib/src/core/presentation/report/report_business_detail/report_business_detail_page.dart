import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class ReportBusinessDetailPage extends StatelessWidget {
  const ReportBusinessDetailPage({super.key});

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
                const ReportBusinessLevelItem(
                  businessLevelType: ReportBusinessLevelType.level5,
                  isWithBorder: false,
                ),
                Gap.h16,
                const CustomDivider(),
                Gap.h16,
                Text(
                  'Kategori Kuliner',
                  style: TypographyApp.text1.bold.black,
                ),
                Gap.h16,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: ColorApp.divider),
                    color: ColorApp.divider,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const KulinerItem(),
                      PaddingWidget(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Gap.h16,
                            Text(
                              'Berdiri Sejak',
                              style: TypographyApp.text1.bold.black,
                            ),
                            Text(
                              '12/12/2019',
                              style: TypographyApp.text2.grey,
                            ),
                            Gap.h16,
                            Text(
                              'Deskripsi',
                              style: TypographyApp.text1.bold.black,
                            ),
                            Text(
                              'Menu Bakso cemilan Makanan',
                              style: TypographyApp.text2.grey,
                            ),
                            Gap.h16,
                            Text(
                              'No WA',
                              style: TypographyApp.text1.bold.black,
                            ),
                            Text(
                              '085161701306',
                              style: TypographyApp.text2.grey,
                            ),
                            Gap.h16,
                            Text(
                              'Omset',
                              style: TypographyApp.text1.bold.black,
                            ),
                            Text(
                              'Rp. 2.500.000/Bulan',
                              style: TypographyApp.text2.grey,
                            ),
                            Gap.h16,
                            Text(
                              'Jumlah Tim',
                              style: TypographyApp.text1.bold.black,
                            ),
                            Text(
                              '10',
                              style: TypographyApp.text2.grey,
                            ),
                            Gap.h16,
                            Text(
                              'Alamat',
                              style: TypographyApp.text1.bold.black,
                            ),
                            Text(
                              'Jl. Kenangna',
                              style: TypographyApp.text2.grey,
                            ),
                            Gap.h16,
                            Text(
                              'Kendala Usaha',
                              style: TypographyApp.text1.bold.black,
                            ),
                            Text(
                              'Coach & Mentor',
                              style: TypographyApp.text2.grey,
                            ),
                            Gap.h16,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Gap.h16,
                const KulinerItem(),
                Gap.h16,
                const KulinerItem(),
                Gap.h16,
                const KulinerItem(),
                Gap.h16,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KulinerItem extends StatelessWidget {
  const KulinerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: ColorApp.divider),
        color: ColorApp.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChipWidget(
                  title: 'Fnb',
                  color: ColorApp.blue,
                  style: TypographyApp.subText1.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 2,
                  ),
                ),
                Gap.h4,
                Text(
                  'Bakso Mwantab',
                  style: TypographyApp.text1.black,
                ),
                Text(
                  'Adji Wijaya',
                  style: TypographyApp.text2.grey,
                ),
              ],
            ),
          ),
          Gap.w16,
          const RotatedBox(
            quarterTurns: 3,
            child: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
