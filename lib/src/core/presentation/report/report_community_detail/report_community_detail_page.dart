import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class ReportCommunityDetailPage extends StatelessWidget {
  const ReportCommunityDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Pengurus",
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
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://a.travel-assets.com/findyours-php/viewfinder/images/res40/481000/481689-Ocean-View-Norfolk.jpg',
                        width: SizeApp.h64,
                        height: SizeApp.h64,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Gap.w16,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Alex Thomas",
                            style: TypographyApp.text1.black,
                          ),
                          Gap.h8,
                          Text(
                            'Alumni Sekolah Perizinan Batch 1',
                            style: TypographyApp.text2.grey,
                          ),
                          Gap.h4,
                          Row(
                            children: [
                              Text(
                                "Jakarta",
                                style: TypographyApp.text2.grey,
                              ),
                              Gap.w8,
                              Text(
                                "Contact Info",
                                style: TypographyApp.text2.blue,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap.h16,
                const CustomDivider(),
                Gap.h16,
                Text(
                  'Social Media',
                  style: TypographyApp.text1.bold.black,
                ),
                Text(
                  'ahmad/tiktok.com',
                  style: TypographyApp.text2.blue,
                ),
                Text(
                  'ahmad/instagram.com',
                  style: TypographyApp.text2.blue,
                ),
                Text(
                  'ahmad/facebook.com',
                  style: TypographyApp.text2.blue,
                ),
                Gap.h16,
                Text(
                  'No WA',
                  style: TypographyApp.text1.bold.black,
                ),
                Text(
                  '081234567890',
                  style: TypographyApp.text2.grey,
                ),
                Gap.h16,
                Text(
                  'Nama Perusahaan',
                  style: TypographyApp.text1.bold.black,
                ),
                Text(
                  'Sejahtera',
                  style: TypographyApp.text2.grey,
                ),
                Gap.h16,
                Text(
                  'Jabatan',
                  style: TypographyApp.text1.bold.black,
                ),
                Text(
                  'Ketua',
                  style: TypographyApp.text2.grey,
                ),
                Gap.h16,
                Text(
                  'Alamat',
                  style: TypographyApp.text1.bold.black,
                ),
                Text(
                  'Jakarta Timur',
                  style: TypographyApp.text2.grey,
                ),
                Gap.h16,
                Text(
                  'Laporan Iuran Bulanan',
                  style: TypographyApp.text1.bold.black,
                ),
                Gap.h16,
                const Column(
                  children: [
                    IuranBulananItem(),
                    IuranBulananItem(),
                    IuranBulananItem(),
                    IuranBulananItem(),
                    IuranBulananItem(),
                    IuranBulananItem(),
                    IuranBulananItem(),
                    IuranBulananItem(),
                    IuranBulananItem(),
                    IuranBulananItem(),
                    IuranBulananItem(),
                  ],
                ),
                Gap.h16,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IuranBulananItem extends StatelessWidget {
  const IuranBulananItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: ColorApp.grey,
          padding: const EdgeInsets.all(8),
          child: Text(
            'JAN',
            style: TypographyApp.subText1.white,
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(6),
            color: ColorApp.lightGrey,
            child: Row(
              children: [
                Gap.w16,
                Container(
                  decoration: BoxDecoration(
                    color: ColorApp.green.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 2,
                  ),
                  child: Text(
                    'LUNAS',
                    style: TypographyApp.subText1.green,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
