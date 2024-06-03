import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class ReportSocialImpactDetailPage extends StatelessWidget {
  const ReportSocialImpactDetailPage({super.key});

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
                const SocialImpactBusinessLevelItem(
                  businessLevelType: SocialImpactBusinessLevelType.level5,
                  isWithBorder: false,
                ),
                Gap.h16,
                const CustomDivider(),
                Gap.h16,
                const KulinerItem(),
                Gap.h16,
                const KulinerItem(),
                Gap.h16,
                const KulinerItem(),
                Gap.h16,
                const KulinerItem(),
                Gap.h16,
                const KulinerItem(),
                Gap.h16,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
