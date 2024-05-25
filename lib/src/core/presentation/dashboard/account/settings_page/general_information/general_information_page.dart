import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/widgets/widgets.dart';

class GeneralInformationPage extends StatelessWidget {
  const GeneralInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("General Information"),
        iconTheme: const IconThemeData(color: ColorApp.grey),
        backgroundColor: ColorApp.white,
        surfaceTintColor: ColorApp.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(8),
          child: CustomDivider(),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: PaddingWidget(
            child: Column(
          children: [
            const ProfileGeneralSection(),
            Gap.h20,
            GeneralInformationFormItem(
              title: "NIK (Nomor Induk Komunitas)",
              controller: TextEditingController(),
              hintText: "Masukkan NIK",
            ),
            Gap.h16,
            GeneralInformationFormItem(
              title: "Nama Lengkap",
              controller: TextEditingController(),
              hintText: "Masukkan nama Lengkap",
            ),
            Gap.h16,
            GeneralInformationFormItem(
              title: "Phone",
              controller: TextEditingController(),
              hintText: "Masukkan no Telephone",
            ),
            Gap.h16,
            GeneralInformationFormItem(
              title: "Email",
              controller: TextEditingController(),
              hintText: "Masukkan Email",
            ),
            Gap.h16,
            const ListInputExeption(
              title: "Bio",
            ),
            Gap.h16,
            const ListInputMap(
              title: "Maps",
              icon: Icon(
                Icons.search_rounded,
                color: ColorApp.grey,
              ),
              hintText: "Domisili Anda",
            ),
            Gap.h16,
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey,
            ),
            Gap.h16,
            ButtonWidget.primary(text: "UPDATE", onTap: () {}),
            Gap.h80,
          ],
        )),
      ),
    );
  }
}
