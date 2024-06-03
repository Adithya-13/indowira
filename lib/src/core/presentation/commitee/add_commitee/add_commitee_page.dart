import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class AddCommiteePage extends StatelessWidget {
  const AddCommiteePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tambah pengurus",
          style: TypographyApp.text1.black,
        ),
        iconTheme: const IconThemeData(color: ColorApp.grey),
        backgroundColor: ColorApp.white,
        surfaceTintColor: ColorApp.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: ColorApp.black,
          ),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text(
                      'Pengurus Inti',
                      style: TypographyApp.text1.bold.black,
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: ColorApp.red,
                      ),
                      padding: const EdgeInsets.all(2),
                      child: const Center(
                        child: Icon(
                          Icons.add_rounded,
                          color: ColorApp.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap.h16,
                const AddCommiteeItemWidget(),
                Gap.h16,
                const AddCommiteeItemWidget(),
                Gap.h16,
                const AddCommiteeItemWidget(),
                Gap.h32,
                Row(
                  children: [
                    Text(
                      'Pengurus Bidang',
                      style: TypographyApp.text1.bold.black,
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: ColorApp.red,
                      ),
                      padding: const EdgeInsets.all(2),
                      child: const Center(
                        child: Icon(
                          Icons.add_rounded,
                          color: ColorApp.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap.h16,
                const AddCommiteeItemWidget(),
                Gap.h16,
                const AddCommiteeItemWidget(),
                Gap.h16,
                const AddCommiteeItemWidget(),
                Gap.h16,
                ButtonWidget.primary(
                  text: 'SIMPAN',
                  onTap: () {},
                ),
                Gap.h20,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddCommiteeItemWidget extends StatelessWidget {
  const AddCommiteeItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Jabatan',
                style: TypographyApp.text1.black,
              ),
            ),
            Gap.w16,
            Expanded(
              child: Text(
                'Nama Pengurus',
                style: TypographyApp.text1.black,
              ),
            ),
          ],
        ),
        Gap.h8,
        Row(
          children: [
            const Expanded(
              child: DropdownWidget(
                hintText: 'Jabatan',
                optionList: [
                  'Ketua',
                ],
              ),
            ),
            Gap.w16,
            const Expanded(
              child: DropdownWidget(
                hintText: 'Pengurus',
                optionList: [
                  'Rakha',
                ],
              ),
            ),
          ],
        ),
        Gap.h8,
        const Align(
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.delete_outlined,
            color: ColorApp.red,
          ),
        ),
        Gap.h16,
        const CustomDivider(),
      ],
    );
  }
}
