import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class CommunityMembershipPage extends StatelessWidget {
  const CommunityMembershipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Membership",
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
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "SEKOLAH / KAMPUS ALUMNI",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h16,
              const DropdownWidget(
                title: 'Tahun',
                hintText: "Tahun",
                optionList: [
                  'Tahun A',
                  'Tahun B',
                  'Tahun C',
                ],
              ),
              Gap.h16,
              const DropdownWidget(
                title: 'Bulan',
                hintText: "Bulan",
                optionList: [
                  'Bulan A',
                  'Bulan B',
                  'Bulan C',
                ],
              ),
              Gap.h16,
              InputFormWidget(
                controller: TextEditingController(),
                hintText: 'Jumlah Iuran',
                title: 'Jumlah Iuran',
              ),
              Gap.h16,
              Text(
                '*jumlah iuran penetapan komunitas setiap anggota minimal Rp 50.000,-',
                style: TypographyApp.subText1.red,
              ),
              const Spacer(),
              ButtonWidget.primary(
                text: "Lakukan Pembayaran",
                onTap: () {
                  context.pushNamed(Routes.paymentMembership.name);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
