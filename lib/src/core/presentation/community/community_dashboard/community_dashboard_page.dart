import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CommunityDashboardPage extends StatelessWidget {
  const CommunityDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indowira"),
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
        actions: [
          Assets.icons.search.svg(),
          Gap.w8,
          Assets.icons.notification.svg(),
          Gap.w8,
          Assets.icons.archive.svg(),
          Gap.w16,
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(8),
          child: CustomDivider(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Assets.svgs.communityBanner.svg(
                fit: BoxFit.fitWidth,
                width: context.screenWidth - 32,
              ),
              Gap.h16,
              Text(
                'Komunitas yang anda ikuti',
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h16,
              SizedBox(
                height: SizeApp.customHeight(208),
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: ColorApp.divider,
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: SizeApp.customHeight(120),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ColorApp.grey,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                height: SizeApp.customHeight(120),
                              ),
                            ),
                          ),
                          Gap.h16,
                          ChipWidget(
                              title: "Fnb",
                              color: ColorApp.blue,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 4,
                              ),
                              style: TypographyApp.text2),
                          Gap.h4,
                          Text(
                            "Asik Masak",
                            style: TypographyApp.text1.black,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Gap.h16,
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Daftar Komunitas',
                      style: TypographyApp.text1.bold.black,
                    ),
                  ),
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
                                    style: TypographyApp.text1.black
                                        .fontSizeCustom(16),
                                  ),
                                  Gap.h16,
                                  InputFormWidget(
                                    controller: TextEditingController(),
                                    hintText: "Search for community",
                                    prefix: const Icon(
                                      Icons.search_rounded,
                                      color: ColorApp.grey,
                                    ),
                                  ),
                                  Gap.h16,
                                  const DropdownWidget(
                                    hintText: 'Kategori',
                                    optionList: [
                                      'Kategori',
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
                    child: ChipWidget(
                      title: 'Filter',
                      color: ColorApp.red,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      style: TypographyApp.text2.red,
                      sufix: const Icon(
                        Icons.filter_alt_outlined,
                        color: ColorApp.red,
                        size: 16,
                      ),
                    ),
                  )
                ],
              ),
              Gap.h16,
              InputFormWidget(
                controller: TextEditingController(),
                hintText: "Search for community",
                prefix: const Icon(
                  Icons.search_rounded,
                  color: ColorApp.grey,
                ),
              ),
              Gap.h16,
              SizedBox(
                height: SizeApp.customHeight(271),
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: ColorApp.divider,
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ChipWidget(
                            title: "Fnb",
                            color: ColorApp.blue,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 4,
                            ),
                            style: TypographyApp.text2,
                          ),
                          Gap.h8,
                          SizedBox(
                            height: SizeApp.customHeight(120),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ColorApp.grey,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                height: SizeApp.customHeight(120),
                              ),
                            ),
                          ),
                          Gap.h12,
                          Text(
                            "Asik Masak",
                            style: TypographyApp.text1.black,
                          ),
                          Gap.h8,
                          Text(
                            "45 Orang member",
                            style: TypographyApp.subText1.grey,
                          ),
                          Gap.h12,
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: ColorApp.blue,
                                width: 2,
                              ),
                              color: ColorApp.white,
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            width: SizeApp.customWidth(120),
                            child: Center(
                              child: Text(
                                'IKUTI',
                                style: TypographyApp.text2.blue.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Gap.h28,
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Komunitas Anda',
                      style: TypographyApp.text1.bold.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.pushNamed(Routes.addCommunity.name);
                    },
                    child: ChipWidget(
                      title: 'Buat Komunitas',
                      color: ColorApp.red,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      style: TypographyApp.text2.red,
                      sufix: const Icon(
                        Icons.edit,
                        color: ColorApp.red,
                        size: 16,
                      ),
                    ),
                  )
                ],
              ),
              Gap.h20,
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Gap.h12,
                      Row(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Perizinan',
                                style: TypographyApp.text2.black,
                              ),
                              Gap.h4,
                              Text(
                                '12-02-2022',
                                style: TypographyApp.subText1.grey,
                              ),
                            ],
                          ),
                          Gap.w20,
                          Expanded(
                            child: Text(
                              'Komunitas Sekolah Perizinan angkatan 2',
                              style: TypographyApp.text2.black,
                            ),
                          ),
                          Gap.h20,
                          const Icon(
                            Icons.more_vert_rounded,
                            color: ColorApp.black,
                          ),
                        ],
                      ),
                      Gap.h12,
                      const CustomDivider(),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
