import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Announcement {
  final String imgProfile;
  final String name;
  final String date;
  final String title;
  final String description;
  final String tags;

  Announcement({
    required this.imgProfile,
    required this.name,
    required this.date,
    required this.title,
    required this.description,
    required this.tags,
  });
}

final dummyAnnouncement = Announcement(
  imgProfile:
      'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg',
  name: "Alex Thomas",
  date: "17 April 2018",
  tags: "Hobby",
  title: "Added new comment",
  description:
      "Busienss cards represent not only your business, but it also tells people your professionalism",
);

final dummyAnnouncementList = [
  dummyAnnouncement,
  dummyAnnouncement,
  dummyAnnouncement,
  dummyAnnouncement,
  dummyAnnouncement,
];

class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pengumuman",
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
                            hintText: 'Semua',
                            optionList: [
                              'Semua',
                            ],
                          ),
                          Gap.h16,
                          const DropdownWidget(
                            hintText: 'Kategori',
                            optionList: [
                              'Kategori',
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
                ButtonWidget.primary(
                  text: "TAMBAH PENGUMUMAN",
                  prefix: const Icon(
                    Icons.add_rounded,
                    color: ColorApp.white,
                  ),
                  onTap: () {
                    context.goNamed(Routes.addAnnouncement.name);
                  },
                ),
                Gap.h16,
                ListView.builder(
                  padding: EdgeInsets.only(
                    bottom: context.mediaQuery.padding.bottom - 24,
                    left: 8,
                    right: 8,
                    top: 8,
                  ),
                  itemCount: dummyAnnouncementList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final item = dummyAnnouncementList[index];
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorApp.white,
                      ),
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  item.imgProfile,
                                  fit: BoxFit.cover,
                                  height: SizeApp.h28,
                                  width: SizeApp.h28,
                                ),
                              ),
                              Gap.w8,
                              Expanded(
                                child: Text(
                                  "Alex Thomas",
                                  style: TypographyApp.text2.black,
                                ),
                              ),
                              const Icon(
                                Icons.more_vert_rounded,
                                color: ColorApp.black,
                              ),
                            ],
                          ),
                          Gap.h8,
                          Text(
                            item.date,
                            style: TypographyApp.text2.grey,
                          ),
                          Gap.h8,
                          ChipWidget(
                            title: item.tags,
                            color: ColorApp.grey,
                          ),
                          Gap.h8,
                          Text(
                            item.title,
                            style: TypographyApp.text1.black,
                          ),
                          Gap.h8,
                          Text(
                            item.description,
                            style: TypographyApp.text2.grey,
                          ),
                          Gap.h8,
                          const CustomDivider(),
                          Gap.h16,
                          Row(
                            children: [
                              Assets.svgs.like.svg(),
                              Gap.w16,
                              Assets.svgs.comment.svg(),
                              Gap.w16,
                              Assets.svgs.share.svg(),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
