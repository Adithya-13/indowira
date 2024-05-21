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
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Indowira"),
        iconTheme: const IconThemeData(color: ColorApp.grey),
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
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Gap.h16,
              const UserSection(),
              const CustomDivider(),
              const BusinessThreatSection(),
              const CustomDivider(),
              const Padding(
                padding: EdgeInsets.all(16),
              ),
            ],
          ),
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
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: ColorApp.lightGrey,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Text(
                      title,
                      style: TypographyApp.text1.pink,
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
