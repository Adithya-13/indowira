import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/widgets/widgets.dart';

class GeneralInformation extends StatefulWidget {
  const GeneralInformation({super.key});

  @override
  State<GeneralInformation> createState() => _GeneralInformationState();
}

class _GeneralInformationState extends State<GeneralInformation> {
  final nikController = TextEditingController();

  final nameController = TextEditingController();

  final phoneController = TextEditingController();

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("General Information"),
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
          children: [
            const ProfileGeneralSection(),
            Gap.h20,
            ListInput(
              title: "NIK (Nomor Induk Komunitas)",
              controller: nikController,
              hintText: "Masukkan NIK",
            ),
            Gap.h16,
            ListInput(
              title: "Nama Lengkap",
              controller: nameController,
              hintText: "Masukkan nama Lengkap",
            ),
            Gap.h16,
            ListInput(
              title: "Phone",
              controller: phoneController,
              hintText: "Masukkan no Telephone",
            ),
            Gap.h16,
            ListInput(
              title: "Email",
              controller: emailController,
              hintText: "Masukkan Email",
            ),
            Gap.h16,
            const ListInputExeption(
              title: "Bio",
              height: 90,
            ),
            Gap.h16,
            const ListInputExeption(
              title: "Maps",
              height: 12,
              icon: Icon(Icons.search_outlined),
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
