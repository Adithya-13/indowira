import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class AddCommunityPage extends StatelessWidget {
  const AddCommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buat Komunitas"),
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
        actions: [
          Gap.w16,
          Padding(
            padding: EdgeInsets.symmetric(vertical: SizeApp.h4),
            child: ButtonWidget.secondary(
              text: "BATAL",
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Gap.w16,
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(8),
          child: CustomDivider(),
        ),
      ),
      backgroundColor: ColorApp.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Gap.h16,
            Text(
              'Logo Komunitas',
              style: TypographyApp.text1.black,
            ),
            Gap.h16,
            Row(
              children: [
                Assets.svgs.addImage.svg(),
                Gap.w16,
                Text(
                  'Maks. 1,5 Mb',
                  style: TypographyApp.text2.grey,
                ),
              ],
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              hintText: 'Tulis nama komunitas',
              title: 'Nama Komunitas',
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              hintText: 'Nama Founder',
              title: 'Founder',
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              hintText: 'DD/MM/YYYY',
              title: 'Tanggal Berdiri',
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              title: 'Website Komunitas',
              hintText: 'Website Komunitas',
            ),
            Gap.h32,
            InputFormWidget(
              controller: TextEditingController(),
              title: 'Media Sosial',
              hintText: 'Link Facebook',
              prefix: Padding(
                padding: const EdgeInsets.all(12),
                child: Assets.icons.facebook.svg(),
              ),
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              hintText: 'Link Instagram',
              prefix: Padding(
                padding: const EdgeInsets.all(12),
                child: Assets.icons.instagram.svg(),
              ),
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              hintText: 'Link Tiktok',
              prefix: Padding(
                padding: const EdgeInsets.all(12),
                child: Assets.icons.tiktok.svg(),
              ),
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              hintText: 'Link Youtube',
              prefix: Padding(
                padding: const EdgeInsets.all(12),
                child: Assets.icons.youtube.svg(),
              ),
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              hintText: 'Link Telegram',
              prefix: Padding(
                padding: const EdgeInsets.all(12),
                child: Assets.icons.linkedln.svg(),
              ),
            ),
            Gap.h32,
            InputFormWidget(
              controller: TextEditingController(),
              title: 'Kontak',
              hintText: 'Link Komunitas',
              prefix: Padding(
                padding: const EdgeInsets.all(12),
                child: Assets.icons.telegram1.svg(),
              ),
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              hintText: 'Link Whatsapp',
              prefix: Padding(
                padding: const EdgeInsets.all(12),
                child: Assets.icons.whatsapp.svg(),
              ),
            ),
            Gap.h16,
            const DropdownWidget(
              hintText: 'Pilih Legalitas Komunitas',
              title: 'Legalitas Komunitas',
              optionList: [
                'Legalitas',
              ],
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              title: 'Nomor Akta pendirian / perubahan terbaru',
              hintText: 'Nomor Akta pendirian',
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              title: 'Rekening Komunitas',
              hintText: 'Nama Rekening',
            ),
            Gap.h8,
            const DropdownWidget(
              hintText: 'Nama Bank',
              optionList: [
                'Bank',
              ],
            ),
            Gap.h8,
            InputFormWidget(
              controller: TextEditingController(),
              hintText: 'Nomor Rekening',
            ),
            Gap.h16,
            const DropdownWidget(
              hintText: 'Membership',
              title: 'Membership',
              optionList: [
                'Free',
                'Berbayar',
              ],
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              title: 'Aturan Komunitas',
              hintText: 'Tulis Aturan Komunitas',
              maxLines: 5,
            ),
            Gap.h32,
            const DropdownWidget(
              title: 'Jenis Komunitas',
              hintText: 'Pilih Jenis Komunitas',
              optionList: [
                'Free',
                'Berbayar',
              ],
            ),
            Gap.h16,
            const DropdownWidget(
              title: 'Kategori Komunitas',
              hintText: 'Pilih Kategori Komunitas',
              optionList: [
                'Free',
                'Berbayar',
              ],
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              title: 'Tagline Komunitas (Maks 30 karakter)',
              hintText: 'Tagline Komunitas',
            ),
            Gap.h16,
            const DropdownWidget(
              title: 'Admin Komunitas',
              hintText: 'Pilih Admin Komunitas',
              optionList: [
                'Saya',
                'Berbayar',
              ],
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              title: 'Deskripsi',
              hintText: 'Tulis Deskripsi Komunitas',
              maxLines: 5,
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              title: 'Visi',
              hintText: 'Tulis Visi Komunitas',
              maxLines: 5,
            ),
            Gap.h16,
            InputFormWidget(
              controller: TextEditingController(),
              title: 'Misi',
              hintText: 'Tulis Misi Komunitas',
              maxLines: 5,
            ),
            Gap.h16,
            ButtonWidget.primary(
              text: 'SUBMIT',
              onTap: () {
                context.goNamed(Routes.communityDetail.name);
              },
            ),
            Gap.h20,
          ],
        ),
      ),
    );
  }
}
