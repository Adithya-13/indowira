import 'package:flutter/material.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class ReportDashboardPage extends StatelessWidget {
  const ReportDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Laporan",
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
                GestureDetector(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Assets.svgs.reportCommunity.svg(
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Gap.h16,
                GestureDetector(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Assets.svgs.reportBusinessProgress.svg(
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Gap.h16,
                GestureDetector(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Assets.svgs.reportSyirkah.svg(
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Gap.h16,
                GestureDetector(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Assets.svgs.reportSocialImpact.svg(
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
