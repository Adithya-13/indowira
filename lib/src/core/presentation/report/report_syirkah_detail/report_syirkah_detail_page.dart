import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/routes/app_routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class ReportSyirkahDetailPage extends StatelessWidget {
  const ReportSyirkahDetailPage({super.key});

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
                const SyirkahCard(
                  isWithBorder: false,
                ),
                Gap.h16,
                const Column(
                  children: [
                    SyirkahTableHead(),
                    SyirkahTableItem(),
                    SyirkahTableItem(),
                    SyirkahTableItem(),
                    SyirkahTableItem(),
                    SyirkahTableItem(),
                    SyirkahTableItem(),
                    SyirkahTableItem(),
                    SyirkahTableItem(),
                    SyirkahTableItem(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SyirkahTableHead extends StatelessWidget {
  const SyirkahTableHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorApp.grey,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Text(
            'No',
            style: TypographyApp.subText1.white,
          ),
          Expanded(
            child: Center(
              child: Text(
                'Nama Pesyirkah',
                style: TypographyApp.subText1.white,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Jumlah Saham',
                style: TypographyApp.subText1.white,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Jumlah Dana',
                style: TypographyApp.subText1.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SyirkahTableItem extends StatelessWidget {
  const SyirkahTableItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed(Routes.reportSyirkahDetailMember.name);
      },
      child: Container(
        color: ColorApp.lightGrey,
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Text(
              '1',
              style: TypographyApp.subText1.grey,
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Indra Kenz',
                  style: TypographyApp.subText1,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  '50 Lembar',
                  style: TypographyApp.subText1,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Jumlah Dana',
                  style: TypographyApp.subText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
