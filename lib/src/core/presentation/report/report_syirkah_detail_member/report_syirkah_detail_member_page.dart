import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class ReportSyirkahDetailMemberPage extends StatelessWidget {
  const ReportSyirkahDetailMemberPage({super.key});

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
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Assets.images.masakAsikLogo.image(
                        height: 40,
                        width: 40,
                      ),
                    ),
                    Gap.w16,
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Bakso Aci',
                            style: TypographyApp.text1.black,
                          ),
                          Gap.h4,
                          Row(
                            children: [
                              const Icon(
                                Icons.pin_drop_outlined,
                                color: ColorApp.grey,
                                size: 16,
                              ),
                              Gap.w8,
                              Text(
                                'Jl. Darmajaya, Jakarta Timur',
                                style: TypographyApp.text2.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap.h16,
                Row(
                  children: [
                    ButtonWidget(
                      buttonType: ButtonType.primary,
                      text: 'Hubungi Kami',
                      prefix: Assets.icons.whatsapp.svg(),
                      color: ColorApp.green,
                      focusColor: ColorApp.green.withOpacity(0.1),
                    ),
                    const Spacer(),
                  ],
                ),
                Gap.h16,
                const CustomDivider(),
                Gap.h16,
                Text(
                  'Produk',
                  style: TypographyApp.text1.black.bold,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: ColorApp.white,
                          border: Border.all(color: ColorApp.divider),
                        ),
                        margin: const EdgeInsets.only(
                          right: 16,
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: SizeApp.customHeight(100),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Assets.images.background.image(
                                  fit: BoxFit.cover,
                                  height: SizeApp.customHeight(100),
                                  width: SizeApp.customHeight(130),
                                ),
                              ),
                            ),
                            Gap.h8,
                            Text(
                              'Bakso Aci',
                              style: TypographyApp.text2.black,
                            ),
                            Gap.h8,
                            Text(
                              'Rp. 25.000',
                              style: TypographyApp.text2.red.bold,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Gap.h16,
                Text(
                  'Detail Usaha Anda',
                  style: TypographyApp.text1.bold.black,
                ),
                Gap.h16,
                const CustomDivider(),
                Gap.h16,
                Text(
                  'Level Usaha',
                  style: TypographyApp.text1.bold.black,
                ),
                Text(
                  'Level 0',
                  style: TypographyApp.text2.grey,
                ),
                Gap.h16,
                Text(
                  'Berdiri Sejak',
                  style: TypographyApp.text1.bold.black,
                ),
                Text(
                  '01/01/2020',
                  style: TypographyApp.text2.grey,
                ),
                Gap.h16,
                Text(
                  'Lokasi',
                  style: TypographyApp.text1.bold.black,
                ),
                Text(
                  'Jl. Darmajaya Jakarta Timur',
                  style: TypographyApp.text2.grey,
                ),
                Gap.h16,
                Text(
                  'Kategori Usaha',
                  style: TypographyApp.text1.bold.black,
                ),
                Text(
                  'Food and Beverages',
                  style: TypographyApp.text2.grey,
                ),
                Gap.h16,
                Text(
                  'Kategori Reseller',
                  style: TypographyApp.text1.bold.black,
                ),
                Text(
                  'Open Reseller',
                  style: TypographyApp.text2.grey,
                ),
                Gap.h16,
                Text(
                  'Jumlah Pegawai',
                  style: TypographyApp.text1.bold.black,
                ),
                Text(
                  '16 Orang',
                  style: TypographyApp.text2.grey,
                ),
                Gap.h16,
                Text(
                  'Omzet Usaha',
                  style: TypographyApp.text1.bold.black,
                ),
                Text(
                  'Rp. 8.000.000/Bulan',
                  style: TypographyApp.text2.grey,
                ),
                Gap.h16,
                Text(
                  'Deskripsi',
                  style: TypographyApp.text1.bold.black,
                ),
                Text(
                  'Lorem ipsum dolor sit amet consectetur. Id faucibus aliquet lacus in augue imperdiet nisl odio. Duis massa amet vulputate non non tristique in morbi. Posuere vitae tempus aliquam sit curabitur purus ullamcorper nunc. Sed elit libero lacus posuere lobortis. Lorem ipsum dolor sit amet consectetur.',
                  style: TypographyApp.text2.grey,
                ),
                Gap.h16,
                Assets.images.maps.image(
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
                Gap.h20,
                Text(
                  'Komunitas yang Anda Ikuti',
                  style: TypographyApp.text1.bold.black,
                ),
                Gap.h16,
                const FollowedCommunityCard(),
                Gap.h8,
                const FollowedCommunityCard(),
                Gap.h8,
                const FollowedCommunityCard(),
                Gap.h8,
                const FollowedCommunityCard(),
                Gap.h8,
                const FollowedCommunityCard(),
                Gap.h16,
                const Center(
                  child: ChipWidget(
                    title: 'Lihat Komunitas Lain',
                    color: ColorApp.red,
                  ),
                ),
                Gap.h20,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FollowedCommunityCard extends StatelessWidget {
  const FollowedCommunityCard({
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
            borderRadius: BorderRadius.circular(8),
            child: Assets.images.masakAsikLogo.image(
              width: 64,
              height: 64,
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
                  'Asik Masak',
                  style: TypographyApp.text1.black,
                ),
              ],
            ),
          ),
          Gap.w16,
        ],
      ),
    );
  }
}
