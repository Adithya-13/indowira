
import 'package:flutter/material.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
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


