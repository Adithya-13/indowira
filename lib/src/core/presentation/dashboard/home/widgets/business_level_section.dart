import 'package:flutter/material.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class BusinessLevelSection extends StatelessWidget {
  const BusinessLevelSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Level Usahaku",
            style: TypographyApp.text1.black.bold,
          ),
          Gap.h16,
          const BusinessLevelItem(
            businessLevelType: BusinessLevelType.level5,
          ),
          Gap.h16,
          const BusinessLevelItem(
            businessLevelType: BusinessLevelType.level4,
          ),
          Gap.h16,
          const BusinessLevelItem(
            businessLevelType: BusinessLevelType.level3,
          ),
          Gap.h16,
          const BusinessLevelItem(
            businessLevelType: BusinessLevelType.level2,
          ),
          Gap.h16,
          const BusinessLevelItem(
            businessLevelType: BusinessLevelType.level1,
          ),
          Gap.h16,
          const BusinessLevelItem(
            businessLevelType: BusinessLevelType.level0,
          ),
        ],
      ),
    );
  }
}

enum BusinessLevelType {
  level0,
  level1,
  level2,
  level3,
  level4,
  level5,
}

class BusinessLevelItem extends StatelessWidget {
  final BusinessLevelType businessLevelType;
  final bool hasBusiness; // you can change this with another code

  const BusinessLevelItem({
    super.key,
    required this.businessLevelType,
    this.hasBusiness = false,
  });

  Color _getColor() {
    return switch (businessLevelType) {
      BusinessLevelType.level5 => const Color(0xFF8B4417),
      BusinessLevelType.level4 => const Color(0xFF001EDA),
      BusinessLevelType.level3 => const Color(0xFFE2DF3F),
      BusinessLevelType.level2 => const Color(0xFFDF55DC),
      BusinessLevelType.level1 => const Color(0xFF32DF3E),
      BusinessLevelType.level0 => const Color(0xFF1AE3E2),
    };
  }

  SvgGenImage _getAssets() {
    return switch (businessLevelType) {
      BusinessLevelType.level5 => Assets.svgs.usahaLevel5,
      BusinessLevelType.level4 => Assets.svgs.usahaLevel4,
      BusinessLevelType.level3 => Assets.svgs.usahaLevel3,
      BusinessLevelType.level2 => Assets.svgs.usahaLevel2,
      BusinessLevelType.level1 => Assets.svgs.usahaLevel1,
      BusinessLevelType.level0 => Assets.svgs.usahaLevel0,
    };
  }

  String _getTitle() {
    return switch (businessLevelType) {
      BusinessLevelType.level0 => "Level 0 (Cari Usaha)",
      BusinessLevelType.level1 => "Level 1 (Cari Makan)",
      BusinessLevelType.level2 => "Level 2 (Cari Duit)",
      BusinessLevelType.level3 => "Level 3 (Cari System)",
      BusinessLevelType.level4 => "Level 4 (Cari Mitra)",
      BusinessLevelType.level5 => "Level 5 (Cari Amal)",
    };
  }

  String _getSubtitle() {
    return switch (businessLevelType) {
      BusinessLevelType.level0 => "Belum Punya Usaha",
      BusinessLevelType.level1 => "Self Employee",
      BusinessLevelType.level2 => "Manager",
      BusinessLevelType.level3 => "Business Owner",
      BusinessLevelType.level4 => "Investor",
      BusinessLevelType.level5 => "Pengusaha Sejati",
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _getColor(),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.only(left: 6),
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          color: ColorApp.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
        child: Column(
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
                        style:
                            TypographyApp.text1.fontSizeCustom(16).normal.black,
                      ),
                      Text(
                        _getSubtitle(),
                        style: TypographyApp.text2.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap.h8,
            hasBusiness
                ? Container()
                : Center(
                    child: Text(
                      "Anda belum punya usaha di level ini",
                      style: TypographyApp.text1,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
