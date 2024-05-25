import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class TransaksikuPage extends StatelessWidget {
  const TransaksikuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Transaksiku"),
          iconTheme: const IconThemeData(color: ColorApp.grey),
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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: PaddingWidget(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap.h20,
                Text(
                  'Riwayat Transaksi',
                  style: TypographyApp.headline3.fontSizeCustom(18).normal,
                ),
                Gap.h20,
                const HeaderTransaction(),
                const TransactionSection(section: "Membership Komunitas"),
                const TransactionSection(section: "Berlangganan Wira Leader"),
                const TransactionSection(section: "Event Berbayar"),
                const TransactionSection(section: "Kelas"),
                const TransactionSection(section: "Iklan Jobs"),
                const TransactionSection(section: "Mentorship"),
                Gap.h72
              ],
            ),
          ),
        ));
  }
}
