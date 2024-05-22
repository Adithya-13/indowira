// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: ColorApp.scaffold,
        width: context.screenWidth * 0.8,
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: PaddingWidget(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        
                      },
                      child: const Icon(
                        Icons.close_rounded,
                        color: ColorApp.grey,
                      ),
                    ),
                  ),
                  Gap.h8,
                  Assets.images.logo.image(
                    fit: BoxFit.fitHeight,
                    height: 64,
                  ),
                  Gap.h8,
                  Text(
                    "INDOWIRA",
                    style: TypographyApp.text1.bold.black,
                  ),
                  Gap.h16,
                  ButtonWidget.outlined(
                    text: "DETAIL KOMUNITAS",
                    onTap: () {},
                  ),
                  Gap.h8,
                  ButtonWidget.primary(
                    text: "GANTI KOMUNITAS",
                    onTap: () {},
                  ),
                  Gap.h16,
                  const CustomDivider(),
                  Gap.h16,
                  Container(
                    decoration: BoxDecoration(
                      color: ColorApp.lightGrey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorApp.yellow,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.only(bottom: 4),
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
                            Text(
                              "Lengkapi Profile Member Komunitas",
                              style: TypographyApp.text2.yellow.bold,
                            ),
                            Gap.h16,
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: ColorApp.grey,
                                  ),
                                  height: 32,
                                  width: 32,
                                ),
                                Gap.w8,
                                const Icon(
                                  Icons.checklist,
                                  color: ColorApp.grey,
                                ),
                                Gap.w4,
                                Text(
                                  "4/5",
                                  style: TypographyApp.text1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Gap.h16,
                  const CustomDivider(),
                  Gap.h20,
                  Row(
                    children: [
                      Expanded(
                        child: ActionDrawerButton(
                          svg: Assets.svgs.komunitasDrawer,
                          text: "Komunitas",
                        ),
                      ),
                      Expanded(
                        child: ActionDrawerButton(
                          svg: Assets.svgs.pengurusDrawer,
                          text: "Pengurus",
                        ),
                      ),
                      Expanded(
                        child: ActionDrawerButton(
                          svg: Assets.svgs.memberDrawer,
                          text: "Member",
                        ),
                      ),
                    ],
                  ),
                  Gap.h20,
                  Row(
                    children: [
                      Expanded(
                        child: ActionDrawerButton(
                          svg: Assets.svgs.pengumumanDrawer,
                          text: "Pengumuman",
                        ),
                      ),
                      Expanded(
                        child: ActionDrawerButton(
                          svg: Assets.svgs.membershipDrawer,
                          text: "Membership",
                        ),
                      ),
                      Expanded(
                        child: ActionDrawerButton(
                          svg: Assets.svgs.laporanDrawer,
                          text: "Laporan",
                        ),
                      ),
                    ],
                  ),
                  Gap.h20,
                  const CustomDivider(),
                  Gap.h20,
                  Text(
                    "Directory",
                    style: TypographyApp.text1,
                  ),
                  Gap.h20,
                  Row(
                    children: [
                      Expanded(
                        child: ActionDrawerButton(
                          svg: Assets.svgs.usahaDrawer,
                          text: "Usaha",
                          width: SizeApp.w24,
                        ),
                      ),
                      Expanded(
                        child: ActionDrawerButton(
                          svg: Assets.svgs.startUpDrawer,
                          text: "Startup",
                          width: SizeApp.w24,
                        ),
                      ),
                      Expanded(
                        child: ActionDrawerButton(
                          svg: Assets.svgs.supportDrawer,
                          text: "Support",
                          width: SizeApp.w24,
                        ),
                      ),
                      Expanded(
                        child: ActionDrawerButton(
                          svg: Assets.svgs.mentorDrawer,
                          text: "Mentor",
                          width: SizeApp.w24,
                        ),
                      ),
                    ],
                  ),
                  Gap.h20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: ActionDrawerButton(
                          svg: Assets.svgs.resellerDrawer,
                          text: "Reseller",
                          width: SizeApp.w24,
                        ),
                      ),
                      Flexible(
                        child: ActionDrawerButton(
                          svg: Assets.svgs.charityDrawer,
                          text: "Charity",
                          width: SizeApp.w24,
                        ),
                      ),
                      Flexible(
                        child: ActionDrawerButton(
                          svg: Assets.svgs.syirkahDrawer,
                          text: "Syirkah",
                          width: SizeApp.w24,
                        ),
                      ),
                    ],
                  ),
                  Gap.h20,
                ],
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Indowira"),
        iconTheme: const IconThemeData(color: ColorApp.grey),
        backgroundColor: ColorApp.white,
        surfaceTintColor: ColorApp.white,
        actions: [
          Assets.icons.search.svg(),
          Gap.w8,
          Assets.icons.notification.svg(),
          Gap.w8,
          Assets.icons.archive.svg(),
          Gap.w16,
        ],
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
      body: Padding(
        padding:
            EdgeInsets.only(bottom: context.mediaQuery.padding.bottom - 24),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Gap.h16,
              const UserSection(),
              const CustomDivider(),
              const BusinessThreatSection(),
              const CustomDivider(),
              const WelcomeBannerSection(),
              Gap.h20,
              UpgradePlanItem(
                upgradePlanType: UpgradePlanType.komunitas,
                onTap: () {},
              ),
              Gap.h16,
              UpgradePlanItem(
                upgradePlanType: UpgradePlanType.sekolah,
                onTap: () {},
              ),
              Gap.h16,
              UpgradePlanItem(
                upgradePlanType: UpgradePlanType.pengusaha,
                onTap: () {},
              ),
              Gap.h32,
              const FollowedCommunitySection(),
              Gap.h32,
              const AnnouncementSection(),
              Gap.h32,
              const ActivitiesSection(),
              const BusinessLevelSection(),
              Gap.h32,
              const SocialImpactFromBusinessSection(),
              Gap.h32,
              const SyirkahBusinessSection(),
              Gap.h20,
            ],
          ),
        ),
      ),
    );
  }
}

class ActionDrawerButton extends StatelessWidget {
  final VoidCallback? onTap;
  final SvgGenImage svg;
  final String text;
  final double? width;
  const ActionDrawerButton({
    super.key,
    this.onTap,
    required this.svg,
    required this.text,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            svg.svg(
              width: width ?? SizeApp.w32,
              fit: BoxFit.fitWidth,
              color: ColorApp.grey,
            ),
            AutoSizeText(
              text,
              style: TypographyApp.subText1.grey,
            ),
          ],
        ),
      ),
    );
  }
}

class SyirkahBusinessSection extends StatelessWidget {
  const SyirkahBusinessSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Syirkah Bisnis-ku",
            style: TypographyApp.text1.black.bold,
          ),
          Gap.h16,
          Center(
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: ColorApp.grey,
                ),
              ),
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: SizeApp.customHeight(120),
                    child: AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorApp.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        height: SizeApp.customHeight(120),
                      ),
                    ),
                  ),
                  Gap.h16,
                  ChipWidget(
                      title: "Fnb",
                      color: ColorApp.blue,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 4,
                      ),
                      style: TypographyApp.text2),
                  Gap.h4,
                  Text(
                    "Asik Masak",
                    style: TypographyApp.text1.black,
                  ),
                  Gap.h8,
                  SizedBox(
                    width: 180,
                    child: ButtonWidget.primary(
                      text: "LIHAT BISNIS",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap.h16,
          Container(
            decoration: BoxDecoration(
              color: ColorApp.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            height: SizeApp.customHeight(209),
            child: const Center(
              child: Text(
                "Map",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SocialImpactFromBusinessSection extends StatelessWidget {
  const SocialImpactFromBusinessSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Dampak Sosial dari Usahaku",
            style: TypographyApp.text1.black.bold,
          ),
          Gap.h16,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: ColorApp.grey,
                ),
                margin: const EdgeInsets.all(12),
                height: 4,
                width: 4,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Dari bisnis yang Aku Jalankan, telah memperkerjakan",
                      style: TypographyApp.text1.grey,
                    ),
                    Gap.h8,
                    Row(
                      children: [
                        ChipWidget(
                          title: "25",
                          color: ColorApp.blue,
                          style: TypographyApp.text1.bold,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 4,
                          ),
                        ),
                        Gap.w8,
                        Expanded(
                          child: Text(
                            "karyawan",
                            style: TypographyApp.text1,
                          ),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: ColorApp.grey,
                ),
                margin: const EdgeInsets.all(12),
                height: 4,
                width: 4,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Dari bisnis yang Aku Jalankan, telah aku donasikan",
                      style: TypographyApp.text1.grey,
                    ),
                    Gap.h8,
                    Row(
                      children: [
                        ChipWidget(
                          title: "Rp 1.500.000,00",
                          color: ColorApp.blue,
                          style: TypographyApp.text1.bold,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 4,
                          ),
                        ),
                        Gap.w8,
                        Expanded(
                          child: Text(
                            "ke YAYASAN YATIM PIATU",
                            style: TypographyApp.text1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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

class ActivitiesSection extends StatelessWidget {
  const ActivitiesSection({
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
            "Kegiatanku",
            style: TypographyApp.text1.black.bold,
          ),
          Gap.h16,
          Row(
            children: [
              const Expanded(
                child: ActivityItem(
                  count: 35,
                  type: "Grup",
                ),
              ),
              Gap.w20,
              const Expanded(
                child: ActivityItem(
                  count: 54,
                  type: "Event",
                ),
              ),
            ],
          ),
          Gap.h20,
          Row(
            children: [
              const Expanded(
                child: ActivityItem(
                  count: 2,
                  type: "Kelas",
                ),
              ),
              Gap.w20,
              const Expanded(
                child: ActivityItem(
                  count: 9,
                  type: "Forum",
                ),
              ),
            ],
          ),
          Gap.h20,
          Row(
            children: [
              const Expanded(
                child: ActivityItem(
                  count: 0,
                  type: "Jobs",
                ),
              ),
              Gap.w20,
              const Expanded(
                child: ActivityItem(
                  count: 11,
                  type: "Artikel",
                ),
              ),
            ],
          ),
          Gap.h20,
          const Row(
            children: [
              Expanded(
                child: ActivityItem(
                  count: 21,
                  type: "Project",
                ),
              ),
            ],
          ),
          Gap.h20,
        ],
      ),
    );
  }
}

class ActivityItem extends StatelessWidget {
  final int count;
  final String type;
  const ActivityItem({
    super.key,
    required this.count,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorApp.red.withOpacity(0.1),
      ),
      padding: EdgeInsets.symmetric(
        vertical: SizeApp.h40,
      ),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "$count",
            style: TypographyApp.headline1.red.bold,
          ),
          Text(
            type,
            style: TypographyApp.headline3.red.normal,
          ),
        ],
      ),
    );
  }
}

class AnnouncementSection extends StatelessWidget {
  const AnnouncementSection({
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
            "Pengumuman dari Founder",
            style: TypographyApp.text1.bold.black,
          ),
          Gap.h32,
          const AnnouncementItem(),
          Gap.h32,
          const AnnouncementItem(),
        ],
      ),
    );
  }
}

class AnnouncementItem extends StatelessWidget {
  const AnnouncementItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.images.indowiraLogo.image(
              fit: BoxFit.fitWidth,
              width: SizeApp.customHeight(32),
            ),
            Gap.w8,
            Text(
              "INDOWIRA",
              style: TypographyApp.text1.black.bold,
            ),
          ],
        ),
        Gap.h16,
        Text(
          "Marketers advertisers usually focus their efforts on the people responsible for making the purchase. In many cases, this is an effective approach but in other cases it can make for a totally useless marketing campaign.",
          style: TypographyApp.text1.thin.black,
        ),
        Gap.h16,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Assets.images.indowiraLogo.image(
                fit: BoxFit.fitWidth,
                width: SizeApp.customHeight(32),
              ),
            ),
            Gap.w8,
            Expanded(
              child: Text(
                "Alex Thomas",
                style: TypographyApp.text1.black.bold,
              ),
            ),
            Gap.w8,
            Text(
              "4 Feb 2020",
              style: TypographyApp.text2.grey,
            ),
          ],
        ),
        Gap.h16,
        const CustomDivider(),
      ],
    );
  }
}

class FollowedCommunitySection extends StatelessWidget {
  const FollowedCommunitySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        PaddingWidget(
          child: Text(
            "Komunitas yang Anda ikuti",
            style: TypographyApp.text1.black.bold,
          ),
        ),
        Gap.h16,
        SizedBox(
          height: SizeApp.customHeight(208),
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(
              horizontal: SizeApp.w16,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: ColorApp.grey,
                  ),
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: SizeApp.customHeight(120),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorApp.grey,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          height: SizeApp.customHeight(120),
                        ),
                      ),
                    ),
                    Gap.h16,
                    ChipWidget(
                        title: "Fnb",
                        color: ColorApp.blue,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 4,
                        ),
                        style: TypographyApp.text2),
                    Gap.h4,
                    Text(
                      "Asik Masak",
                      style: TypographyApp.text1.black,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Gap.h16,
        const Center(
          child: ChipWidget(
            color: ColorApp.red,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            title: "Lihat Komunitas Lain",
          ),
        ),
      ],
    );
  }
}

class WelcomeBannerSection extends StatelessWidget {
  const WelcomeBannerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Assets.svgs.welcomeBanner.svg(
        fit: BoxFit.fitWidth,
        width: context.screenWidth - 32,
      ),
    );
  }
}

enum UpgradePlanType {
  komunitas,
  sekolah,
  pengusaha,
}

class UpgradePlanItem extends StatelessWidget {
  final UpgradePlanType upgradePlanType;
  final VoidCallback? onTap;
  const UpgradePlanItem({
    super.key,
    required this.upgradePlanType,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: ColorApp.grey,
          ),
        ),
        padding: const EdgeInsets.all(32),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            switch (upgradePlanType) {
              UpgradePlanType.komunitas => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Aku ingin menjadi",
                      style: TypographyApp.text1,
                    ),
                    Text(
                      "FOUNDER KOMUNITAS",
                      style: TypographyApp.headline3.red,
                    ),
                  ],
                ),
              UpgradePlanType.sekolah => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Aku ingin menjadi",
                      style: TypographyApp.text1,
                    ),
                    Text(
                      "FOUNDER SEKOLAH",
                      style: TypographyApp.headline3.red,
                    ),
                  ],
                ),
              UpgradePlanType.pengusaha => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Aku PENGUSAHA",
                      style: TypographyApp.text1,
                    ),
                    Text(
                      "ingin BEKERJASAMA",
                      style: TypographyApp.headline3.red,
                    ),
                  ],
                ),
            },
            Gap.h32,
            switch (upgradePlanType) {
              UpgradePlanType.komunitas => Assets.svgs.founderKomunitas.svg(),
              UpgradePlanType.sekolah => Assets.svgs.founderSekolah.svg(),
              UpgradePlanType.pengusaha => Assets.svgs.founderPengusaha.svg(),
            },
            Gap.h32,
            switch (upgradePlanType) {
              UpgradePlanType.komunitas => Text(
                  "Aku telah menggalakan kewirausahawan di komunitasku. Komunitas wirausahaku butuh investor. Aku ingin wirausaha komunitas maju.",
                  style: TypographyApp.text1,
                  textAlign: TextAlign.center,
                ),
              UpgradePlanType.sekolah => Text(
                  "Aku tidak hanya menggerakan kegiatan di komunitasku, tapi aku juga mengaktifkan edukasi di komunitasku. Aku ingin buka kelas di komunitasku.",
                  style: TypographyApp.text1,
                  textAlign: TextAlign.center,
                ),
              UpgradePlanType.pengusaha => Text(
                  "Aku telah menggalakan kewirausahawan di komunitasku. Komunitas wirausahaku butuh investor. Aku ingin wirausaha komunitas maju.",
                  style: TypographyApp.text1,
                  textAlign: TextAlign.center,
                ),
            },
            Gap.h20,
            ButtonWidget.primary(
              text: "UPGRADE PLAN",
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }
}

class BusinessThreatSection extends StatelessWidget {
  const BusinessThreatSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap.h16,
          Text(
            "Kendala Usahaku",
            style: TypographyApp.text1.black.bold,
          ),
          Gap.h12,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                "Perbankan dan Keuangan Syariah",
                "Coach dan Marketing",
                "Konsultan Branding",
                "Digital Marketing"
              ].map(
                (title) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: ChipWidget(
                      color: ColorApp.pink,
                      title: title,
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          Gap.h12,
        ],
      ),
    );
  }
}

class ChipWidget extends StatelessWidget {
  final String title;
  final EdgeInsets? padding;
  final Color color;
  final TextStyle? style;
  const ChipWidget({
    super.key,
    required this.title,
    this.padding,
    required this.color,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: color.withOpacity(0.1),
      ),
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
      child: Text(
        title,
        style: style?.copyWith(color: color) ??
            TypographyApp.text1.copyWith(color: color),
      ),
    );
  }
}

class UserSection extends StatelessWidget {
  const UserSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Hery",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.w8,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: ColorApp.lightGrey,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                child: Text(
                  "USER",
                  style: TypographyApp.text2.grey,
                ),
              ),
            ],
          ),
          Gap.h12,
          Text(
            "Saya orang yang BERANI BERKOMUNITAS",
            style: TypographyApp.text1,
          ),
          Gap.h12,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorApp.yellow,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  style: TypographyApp.text1.white,
                  "Upgrade Plan",
                ),
                Gap.w8,
                const Icon(
                  Icons.star_rounded,
                  color: ColorApp.white,
                ),
              ],
            ),
          ),
          Gap.h16,
        ],
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: ColorApp.grey,
      height: 0.8,
    );
  }
}
