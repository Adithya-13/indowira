import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/app_routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class ReportBusinessPage extends StatelessWidget {
  const ReportBusinessPage({super.key});

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
                  "Laporan Progress Usaha Anggota Komunitas",
                  style: TypographyApp.text1.black.fontSizeCustom(18),
                ),
                Gap.h8,
                Text(
                  "Berikut ini adalah Daftar Progress Kewirausahaan di Komunitas Anda:",
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
                const ReportBusinessLevelItem(
                  businessLevelType: ReportBusinessLevelType.level5,
                ),
                Gap.h16,
                const ReportBusinessLevelItem(
                  businessLevelType: ReportBusinessLevelType.level4,
                ),
                Gap.h16,
                const ReportBusinessLevelItem(
                  businessLevelType: ReportBusinessLevelType.level3,
                ),
                Gap.h16,
                const ReportBusinessLevelItem(
                  businessLevelType: ReportBusinessLevelType.level2,
                ),
                Gap.h16,
                const ReportBusinessLevelItem(
                  businessLevelType: ReportBusinessLevelType.level1,
                ),
                Gap.h16,
                const ReportBusinessLevelItem(
                  businessLevelType: ReportBusinessLevelType.level0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum ReportBusinessLevelType {
  level0,
  level1,
  level2,
  level3,
  level4,
  level5,
}

class ReportBusinessLevelItem extends StatelessWidget {
  final ReportBusinessLevelType businessLevelType;
  final bool isWithBorder;

  const ReportBusinessLevelItem({
    super.key,
    required this.businessLevelType,
    this.isWithBorder = true,
  });

  Color _getColor() {
    return switch (businessLevelType) {
      ReportBusinessLevelType.level5 => const Color(0xFF8B4417),
      ReportBusinessLevelType.level4 => const Color(0xFF001EDA),
      ReportBusinessLevelType.level3 => const Color(0xFFE2DF3F),
      ReportBusinessLevelType.level2 => const Color(0xFFDF55DC),
      ReportBusinessLevelType.level1 => const Color(0xFF32DF3E),
      ReportBusinessLevelType.level0 => const Color(0xFF1AE3E2),
    };
  }

  SvgGenImage _getAssets() {
    return switch (businessLevelType) {
      ReportBusinessLevelType.level5 => Assets.svgs.usahaLevel5,
      ReportBusinessLevelType.level4 => Assets.svgs.usahaLevel4,
      ReportBusinessLevelType.level3 => Assets.svgs.usahaLevel3,
      ReportBusinessLevelType.level2 => Assets.svgs.usahaLevel2,
      ReportBusinessLevelType.level1 => Assets.svgs.usahaLevel1,
      ReportBusinessLevelType.level0 => Assets.svgs.usahaLevel0,
    };
  }

  String _getTitle() {
    return switch (businessLevelType) {
      ReportBusinessLevelType.level0 => "Level 0 (Cari Usaha)",
      ReportBusinessLevelType.level1 => "Level 1 (Cari Makan)",
      ReportBusinessLevelType.level2 => "Level 2 (Cari Duit)",
      ReportBusinessLevelType.level3 => "Level 3 (Cari System)",
      ReportBusinessLevelType.level4 => "Level 4 (Cari Mitra)",
      ReportBusinessLevelType.level5 => "Level 5 (Cari Amal)",
    };
  }

  String _getSubtitle() {
    return switch (businessLevelType) {
      ReportBusinessLevelType.level0 => "Belum Punya Usaha",
      ReportBusinessLevelType.level1 => "Self Employee",
      ReportBusinessLevelType.level2 => "Manager",
      ReportBusinessLevelType.level3 => "Business Owner",
      ReportBusinessLevelType.level4 => "Investor",
      ReportBusinessLevelType.level5 => "Pengusaha Sejati",
    };
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed(Routes.reportBusinessDetail.name);
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
