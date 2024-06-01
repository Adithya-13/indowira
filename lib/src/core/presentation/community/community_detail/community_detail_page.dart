import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/shared.dart';
import 'package:indowira/src/widgets/widgets.dart';

class CommunityDetailPage extends StatelessWidget {
  const CommunityDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile Member Komunitas",
          style: TypographyApp.text1.black,
        ),
        iconTheme: const IconThemeData(color: ColorApp.grey),
        backgroundColor: ColorApp.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: ColorApp.black,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        surfaceTintColor: ColorApp.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(8),
          child: CustomDivider(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "KATEGORI SEKOLAH / KAMPUS ALUMNI",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h32,
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://a.travel-assets.com/findyours-php/viewfinder/images/res40/481000/481689-Ocean-View-Norfolk.jpg',
                  width: SizeApp.h64,
                  height: SizeApp.h64,
                  fit: BoxFit.cover,
                ),
              ),
              Gap.h16,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ChipWidget(
                    title: 'Terbuka',
                    color: ColorApp.blue,
                    style: TypographyApp.text2,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                  ),
                  Gap.w8,
                  ChipWidget(
                    title: 'Sekolah / Kampus Alumni',
                    color: ColorApp.grey,
                    style: TypographyApp.text2,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                  ),
                ],
              ),
              Gap.h8,
              Text(
                "Alumni ITB 2000",
                style: TypographyApp.text1.bold.black,
              ),
              Gap.h8,
              Row(
                children: [
                  Text(
                    'Biaya membership',
                    style: TypographyApp.text2.grey,
                  ),
                  Gap.w8,
                  Text(
                    'RP. 25.000/Bulan',
                    style: TypographyApp.text1.red.bold,
                  ),
                ],
              ),
              Gap.h8,
              Text(
                'Jumlah member saat ini 45 orang',
                style: TypographyApp.text2.grey,
              ),
              Gap.h16,
              Row(
                children: [
                  Expanded(
                    child: ButtonWidget.primary(
                      text: "BAYAR KOMUNITAS",
                      onTap: () {
                        context.pushNamed(Routes.communityMembership.name);
                      },
                    ),
                  ),
                  Gap.w8,
                  Expanded(
                    child: ButtonWidget.outlined(
                      text: "SHARE",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Gap.h16,
              Text(
                "Tagline",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h4,
              Text(
                "Kampus Biru Beraksi",
                style: TypographyApp.text1.grey,
              ),
              Gap.h8,
              Text(
                "Founder",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h4,
              Text(
                "Rahmad Hadiyanto",
                style: TypographyApp.text1.grey,
              ),
              Gap.h16,
              Text(
                "Berdiri",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h4,
              Text(
                "23 Agustus 2022",
                style: TypographyApp.text1.grey,
              ),
              Gap.h8,
              Text(
                "Website",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h4,
              Text(
                "www.alumniitbjkt.co.id",
                style: TypographyApp.text1.grey,
              ),
              Gap.h16,
              Text(
                "Admin",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h4,
              Text(
                "Saya, Chaya, Bintang",
                style: TypographyApp.text1.grey,
              ),
              Gap.h8,
              Text(
                "Media Sosial",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h8,
              Row(
                children: [
                  Assets.svgs.google.svg(
                    fit: BoxFit.fitWidth,
                    width: SizeApp.w16,
                    color: ColorApp.black,
                  ),
                  Gap.w8,
                  Expanded(
                    child: Text(
                      "alumniitbjkt/facebook.com",
                      style: TypographyApp.text1.grey,
                    ),
                  ),
                ],
              ),
              Gap.h8,
              Row(
                children: [
                  Assets.svgs.google.svg(
                    fit: BoxFit.fitWidth,
                    width: SizeApp.w16,
                    color: ColorApp.black,
                  ),
                  Gap.w8,
                  Expanded(
                    child: Text(
                      "alumniitbjkt/facebook.com",
                      style: TypographyApp.text1.grey,
                    ),
                  ),
                ],
              ),
              Gap.h8,
              Row(
                children: [
                  Assets.svgs.google.svg(
                    fit: BoxFit.fitWidth,
                    width: SizeApp.w16,
                    color: ColorApp.black,
                  ),
                  Gap.w8,
                  Expanded(
                    child: Text(
                      "alumniitbjkt/facebook.com",
                      style: TypographyApp.text1.grey,
                    ),
                  ),
                ],
              ),
              Gap.h8,
              Row(
                children: [
                  Assets.svgs.google.svg(
                    fit: BoxFit.fitWidth,
                    width: SizeApp.w16,
                    color: ColorApp.black,
                  ),
                  Gap.w8,
                  Expanded(
                    child: Text(
                      "alumniitbjkt/facebook.com",
                      style: TypographyApp.text1.grey,
                    ),
                  ),
                ],
              ),
              Gap.h8,
              Row(
                children: [
                  Assets.svgs.google.svg(
                    fit: BoxFit.fitWidth,
                    width: SizeApp.w16,
                    color: ColorApp.black,
                  ),
                  Gap.w8,
                  Expanded(
                    child: Text(
                      "alumniitbjkt/facebook.com",
                      style: TypographyApp.text1.grey,
                    ),
                  ),
                ],
              ),
              Gap.h8,
              Row(
                children: [
                  Assets.svgs.google.svg(
                    fit: BoxFit.fitWidth,
                    width: SizeApp.w16,
                    color: ColorApp.black,
                  ),
                  Gap.w8,
                  Expanded(
                    child: Text(
                      "alumniitbjkt/facebook.com",
                      style: TypographyApp.text1.grey,
                    ),
                  ),
                ],
              ),
              Gap.h8,
              Row(
                children: [
                  Assets.svgs.google.svg(
                    fit: BoxFit.fitWidth,
                    width: SizeApp.w16,
                    color: ColorApp.black,
                  ),
                  Gap.w8,
                  Expanded(
                    child: Text(
                      "alumniitbjkt/facebook.com",
                      style: TypographyApp.text1.grey,
                    ),
                  ),
                ],
              ),
              Gap.h8,
              Text(
                "Kontak",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h8,
              Row(
                children: [
                  Assets.svgs.google.svg(
                    fit: BoxFit.fitWidth,
                    width: SizeApp.w16,
                    color: ColorApp.black,
                  ),
                  Gap.w8,
                  Expanded(
                    child: Text(
                      "alumniitbjkt@gmail.com",
                      style: TypographyApp.text1.grey,
                    ),
                  ),
                ],
              ),
              Gap.h8,
              Row(
                children: [
                  Assets.svgs.google.svg(
                    fit: BoxFit.fitWidth,
                    width: SizeApp.w16,
                    color: ColorApp.black,
                  ),
                  Gap.w8,
                  Expanded(
                    child: Text(
                      "wa.me/081234567890",
                      style: TypographyApp.text1.grey,
                    ),
                  ),
                ],
              ),
              Gap.h16,
              Text(
                "Deskripsi",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h4,
              Text(
                "Lorem ipsum dolor sit amet consectetur. Ornare massa et ultrices dictum quis orci et. At quam amet aliquet at. Urna consequat sagittis tellus mauris risus",
                style: TypographyApp.text1.grey,
              ),
              Gap.h16,
              Text(
                "Visi",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h4,
              Text(
                "Lorem ipsum dolor sit amet consectetur. Ornare massa et ultrices dictum quis orci et. At quam amet aliquet at. Urna consequat sagittis tellus mauris risus",
                style: TypographyApp.text1.grey,
              ),
              Gap.h16,
              Text(
                "Misi",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h4,
              Text(
                "Lorem ipsum dolor sit amet consectetur. Ornare massa et ultrices dictum quis orci et. At quam amet aliquet at. Urna consequat sagittis tellus mauris risus",
                style: TypographyApp.text1.grey,
              ),
              Gap.h16,
              Row(
                children: [
                  Expanded(
                    child: ButtonWidget.outlined(
                      text: "LIHAT PENGURUS",
                      onTap: () {},
                    ),
                  ),
                  Gap.w8,
                  Expanded(
                    child: ButtonWidget.outlined(
                      text: "LIHAT MEMBER",
                      onTap: () {
                        context.pushNamed(Routes.directoryMember.name);
                      },
                    ),
                  ),
                ],
              ),
              Gap.h32,
            ],
          ),
        ),
      ),
    );
  }
}
