import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/app_routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class ReportSocialImpactPage extends StatelessWidget {
  const ReportSocialImpactPage({super.key});

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
                  "Laporan Dampak Sosial : Tenaga Kerja Terserap & Donasi Tersalurkan",
                  style: TypographyApp.text1.black.fontSizeCustom(18),
                ),
                Gap.h8,
                Text(
                  "Berikut ini adalah Daftar Tenaga Kerja Terserap & Charity di Komunitas Anda",
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
                const SocialImpactBusinessLevelItem(
                  businessLevelType: SocialImpactBusinessLevelType.level5,
                ),
                Gap.h16,
                const SocialImpactBusinessLevelItem(
                  businessLevelType: SocialImpactBusinessLevelType.level4,
                ),
                Gap.h16,
                const SocialImpactBusinessLevelItem(
                  businessLevelType: SocialImpactBusinessLevelType.level3,
                ),
                Gap.h16,
                const SocialImpactBusinessLevelItem(
                  businessLevelType: SocialImpactBusinessLevelType.level2,
                ),
                Gap.h16,
                const SocialImpactBusinessLevelItem(
                  businessLevelType: SocialImpactBusinessLevelType.level1,
                ),
                Gap.h16,
                const SocialImpactBusinessLevelItem(
                  businessLevelType: SocialImpactBusinessLevelType.level0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum SocialImpactBusinessLevelType {
  level0,
  level1,
  level2,
  level3,
  level4,
  level5,
}

class SocialImpactBusinessLevelItem extends StatelessWidget {
  final SocialImpactBusinessLevelType businessLevelType;
  final bool isWithBorder;

  const SocialImpactBusinessLevelItem({
    super.key,
    required this.businessLevelType,
    this.isWithBorder = true,
  });

  Color _getColor() {
    return switch (businessLevelType) {
      SocialImpactBusinessLevelType.level5 => const Color(0xFF8B4417),
      SocialImpactBusinessLevelType.level4 => const Color(0xFF001EDA),
      SocialImpactBusinessLevelType.level3 => const Color(0xFFE2DF3F),
      SocialImpactBusinessLevelType.level2 => const Color(0xFFDF55DC),
      SocialImpactBusinessLevelType.level1 => const Color(0xFF32DF3E),
      SocialImpactBusinessLevelType.level0 => const Color(0xFF1AE3E2),
    };
  }

  SvgGenImage _getAssets() {
    return switch (businessLevelType) {
      SocialImpactBusinessLevelType.level5 => Assets.svgs.usahaLevel5,
      SocialImpactBusinessLevelType.level4 => Assets.svgs.usahaLevel4,
      SocialImpactBusinessLevelType.level3 => Assets.svgs.usahaLevel3,
      SocialImpactBusinessLevelType.level2 => Assets.svgs.usahaLevel2,
      SocialImpactBusinessLevelType.level1 => Assets.svgs.usahaLevel1,
      SocialImpactBusinessLevelType.level0 => Assets.svgs.usahaLevel0,
    };
  }

  String _getTitle() {
    return switch (businessLevelType) {
      SocialImpactBusinessLevelType.level0 => "Level 0 (Cari Usaha)",
      SocialImpactBusinessLevelType.level1 => "Level 1 (Cari Makan)",
      SocialImpactBusinessLevelType.level2 => "Level 2 (Cari Duit)",
      SocialImpactBusinessLevelType.level3 => "Level 3 (Cari System)",
      SocialImpactBusinessLevelType.level4 => "Level 4 (Cari Mitra)",
      SocialImpactBusinessLevelType.level5 => "Level 5 (Cari Amal)",
    };
  }

  String _getSubtitle() {
    return switch (businessLevelType) {
      SocialImpactBusinessLevelType.level0 => "Belum Punya Usaha",
      SocialImpactBusinessLevelType.level1 => "Self Employee",
      SocialImpactBusinessLevelType.level2 => "Manager",
      SocialImpactBusinessLevelType.level3 => "Business Owner",
      SocialImpactBusinessLevelType.level4 => "Investor",
      SocialImpactBusinessLevelType.level5 => "Pengusaha Sejati",
    };
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed(Routes.reportSocialImpactDetail.name);
      },
      child: isWithBorder
          ? Container(
              decoration: BoxDecoration(
                color: _getColor(),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: ColorApp.divider),
              ),
              padding: const EdgeInsets.only(left: 6),
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorApp.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                child: _content(),
              ),
            )
          : _content(),
    );
  }

  Column _content() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            _getAssets().svg(
              width: SizeApp.w80,
              fit: BoxFit.fitWidth,
            ),
            Gap.w16,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _getTitle(),
                    style: TypographyApp.text1.fontSizeCustom(16).normal.black,
                  ),
                  Text(
                    _getSubtitle(),
                    style: TypographyApp.text2.grey,
                  ),
                ],
              ),
            ),
            if (isWithBorder) ...[
              Gap.w16,
              const Icon(
                Icons.chevron_right_rounded,
                color: ColorApp.black,
              ),
              Gap.w16,
            ],
          ],
        ),
        Gap.h8,
        Row(
          children: [
            Text(
              '35',
              style: TypographyApp.text1.red,
            ),
            Text(
              ' Anggota',
              style: TypographyApp.text1.grey,
            ),
          ],
        ),
      ],
    );
  }
}
