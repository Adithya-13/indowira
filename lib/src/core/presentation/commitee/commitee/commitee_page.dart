import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CommiteePage extends StatelessWidget {
  const CommiteePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pengurus",
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
            context.pop();
          },
        ),
        actions: [
          GestureDetector(
            onTap: () {
              showCupertinoModalBottomSheet(
                context: context,
                expand: false,
                builder: (context) => Material(
                  child: SafeArea(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 5,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: ColorApp.lightGrey,
                            ),
                          ),
                          Gap.h20,
                          Text(
                            "Filter Pencarian",
                            style: TypographyApp.text1.black.fontSizeCustom(16),
                          ),
                          Gap.h16,
                          InputFormWidget(
                            controller: TextEditingController(),
                            hintText: "Search",
                            prefix: const Icon(
                              Icons.search_rounded,
                              color: ColorApp.grey,
                            ),
                          ),
                          Gap.h16,
                          const DropdownWidget(
                            hintText: 'Pengurus',
                            optionList: [
                              'Pengurus',
                            ],
                          ),
                          Gap.h16,
                          const DropdownWidget(
                            hintText: 'Provinsi',
                            optionList: [
                              'Provinsi',
                            ],
                          ),
                          Gap.h16,
                          const DropdownWidget(
                            hintText: 'Kabupaten / Kota',
                            optionList: [
                              'Kabupaten / Kota',
                            ],
                          ),
                          Gap.h16,
                          const DropdownWidget(
                            hintText: 'Kecamatan',
                            optionList: [
                              'Kecamatan',
                            ],
                          ),
                          Gap.h16,
                          const DropdownWidget(
                            hintText: 'Kelurahan',
                            optionList: [
                              'Kelurahan',
                            ],
                          ),
                          Gap.h16,
                          ButtonWidget.primary(
                            text: 'Cari',
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            child: const Icon(
              Icons.filter_alt_outlined,
              color: ColorApp.grey,
            ),
          ),
          Gap.w16,
        ],
        surfaceTintColor: ColorApp.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(8),
          child: CustomDivider(),
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
                InputFormWidget(
                  controller: TextEditingController(),
                  hintText: "Search",
                  prefix: const Icon(
                    Icons.search_rounded,
                    color: ColorApp.grey,
                  ),
                ),
                Gap.h16,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ColorApp.grey,
                  ),
                  height: SizeApp.customHeight(192),
                ),
                Gap.h16,
                Row(
                  children: [
                    ButtonWidget.outlined(
                      text: 'EDIT',
                      onTap: () {
                        context.goNamed(Routes.addCommitee.name);
                      },
                    ),
                    Gap.w16,
                    Expanded(
                      child: ButtonWidget.primary(
                        text: 'TAMBAH PENGURUS',
                        prefix: const Icon(
                          Icons.add_rounded,
                          color: ColorApp.white,
                        ),
                        onTap: () {
                          context.goNamed(Routes.addCommitee.name);
                        },
                      ),
                    ),
                  ],
                ),
                Gap.h16,
                Text(
                  'Pengurus Inti',
                  style: TypographyApp.text1.black.bold,
                ),
                Gap.h16,
                Text(
                  'Ketua',
                  style: TypographyApp.text2.black,
                ),
                Gap.h8,
                const CommiteeItemCard(),
                Gap.h16,
                Text(
                  'Sekretaris',
                  style: TypographyApp.text2.black,
                ),
                Gap.h8,
                const CommiteeItemCard(),
                Gap.h16,
                Text(
                  'Bendahara',
                  style: TypographyApp.text2.black,
                ),
                Gap.h8,
                const CommiteeItemCard(),
                Gap.h16,
                Text(
                  'Pengurus Bidang',
                  style: TypographyApp.text1.black.bold,
                ),
                Gap.h16,
                Text(
                  'Bid. Ekonomi',
                  style: TypographyApp.text2.black,
                ),
                Gap.h8,
                const CommiteeItemCard(),
                Gap.h16,
                Text(
                  'Bid. Sosial',
                  style: TypographyApp.text2.black,
                ),
                Gap.h8,
                const CommiteeItemCard(),
                Gap.h16,
                Text(
                  'Bid. Agama',
                  style: TypographyApp.text2.black,
                ),
                Gap.h8,
                const CommiteeItemCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CommiteeItemCard extends StatelessWidget {
  const CommiteeItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorApp.white,
        border: Border.all(
          color: ColorApp.divider,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://a.travel-assets.com/findyours-php/viewfinder/images/res40/481000/481689-Ocean-View-Norfolk.jpg',
              width: SizeApp.h64,
              height: SizeApp.h64,
              fit: BoxFit.cover,
            ),
          ),
          Gap.w16,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Alex Thomas",
                  style: TypographyApp.text1.black,
                ),
                Gap.h8,
                Text(
                  'Alumni Sekolah Perizinan Batch 1',
                  style: TypographyApp.text2.grey,
                ),
                Gap.h4,
                Row(
                  children: [
                    Text(
                      "Jakarta",
                      style: TypographyApp.text2.grey,
                    ),
                    Gap.w8,
                    Text(
                      "Contact Info",
                      style: TypographyApp.text2.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
