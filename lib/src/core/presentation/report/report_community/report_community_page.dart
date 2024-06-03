import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/app_routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class ReportCommunityPage extends StatelessWidget {
  const ReportCommunityPage({super.key});

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
                  "Laporan Pengurus, anggota dan Iuran Komunitas",
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
                const CustomDivider(),
                Gap.h16,
                Text(
                  "Pengurus Inti",
                  style: TypographyApp.text1.bold.black,
                ),
                Gap.h16,
                const CustomDivider(),
                Gap.h16,
                Text(
                  "Ketua",
                  style: TypographyApp.text1.black,
                ),
                Gap.h16,
                const CommunityMemberCard(),
                Gap.h16,
                Text(
                  "Sekretaris",
                  style: TypographyApp.text1.black,
                ),
                Gap.h16,
                const CommunityMemberCard(),
                Gap.h16,
                Text(
                  "Pengurus Bidang",
                  style: TypographyApp.text1.bold.black,
                ),
                Gap.h16,
                const CustomDivider(),
                Gap.h16,
                Text(
                  "Ekonomi",
                  style: TypographyApp.text1.black,
                ),
                Gap.h16,
                const CommunityMemberCard(),
                Gap.h16,
                Text(
                  "Agama",
                  style: TypographyApp.text1.black,
                ),
                Gap.h16,
                const CommunityMemberCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CommunityMemberCard extends StatelessWidget {
  const CommunityMemberCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.reportCommunityDetail.name);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ColorApp.white,
          border: Border.all(
            color: ColorApp.divider,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
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
      ),
    );
  }
}
