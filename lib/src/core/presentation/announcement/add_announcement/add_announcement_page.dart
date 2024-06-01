import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/widgets/widgets.dart';

class AddAnnouncementPage extends StatelessWidget {
  const AddAnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Pengumuman"),
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
      body: Container(
        color: ColorApp.white,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InputFormWidget(
              controller: TextEditingController(),
              hintText: 'Tulis judul pengumuman',
              title: 'Judul',
            ),
            Gap.h16,
            const DropdownWidget(
              hintText: 'Pilih Kategori',
              title: 'Kategori',
              optionList: [
                'Kategori',
              ],
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              hintText: "Tulis isi pengumuman disini",
              title: 'Pengumuman',
              maxLines: 5,
            ),
            Gap.h16,
            const Spacer(),
            ButtonWidget.primary(
              text: "POST",
              onTap: () {
                context.goNamed(Routes.announcement.name);
              },
            ),
            Gap.h32,
          ],
        ),
      ),
    );
  }
}
