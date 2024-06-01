// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/shared.dart';
import 'package:indowira/src/widgets/widgets.dart';

class ProfileMemberPage extends StatelessWidget {
  const ProfileMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile Member Komunitas",
          style: TypographyApp.text1.black,
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
                "KATEGORI SEKOLAH / KAMPUS ALUMNI",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h16,
              const DropdownWidget(
                title: 'Fakultas',
                hintText: "Pilih Fakultas",
                optionList: [
                  'Fakultas A',
                  'Fakultas B',
                  'Fakultas C',
                ],
              ),
              Gap.h16,
              const DropdownWidget(
                title: 'Jurusan',
                hintText: "Pilih Jurusan",
                optionList: [
                  'Jurusan A',
                  'Jurusan B',
                  'Jurusan C',
                ],
              ),
              Gap.h16,
              const DropdownWidget(
                title: 'Angkatan',
                hintText: "Pilih Angkatan",
                optionList: [
                  'Angkatan A',
                  'Angkatan B',
                  'Angkatan C',
                ],
              ),
              const Spacer(),
              ButtonWidget.primary(
                text: "SIMPAN",
                onTap: () {
                  context.pushNamed(Routes.communityDetail.name);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
