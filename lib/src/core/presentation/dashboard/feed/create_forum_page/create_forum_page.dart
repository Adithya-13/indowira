import 'package:flutter/material.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class CreateForumPage extends StatelessWidget {
  const CreateForumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        title: const Text("Forum"),
        iconTheme: const IconThemeData(color: ColorApp.grey),
        backgroundColor: ColorApp.white,
        surfaceTintColor: ColorApp.white,
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
      body: PaddingWidget(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap.h16,
              const RedBoxAnnouncement(
                height: 178,
                headings: "Selamat datang di FORUM DISKUSI!",
                desc:
                    "Diskusikan berbagai hal yang sedang hangat dibicarakan. Atau Anda dapat juga diskusi tentang hal-hal yang memancing pendapat anggota komunitas Anda.",
              ),
              Gap.h16,
              const CustomDivider(),
              Gap.h16,
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: SizeApp.customWidth(155),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: Row(
                    children: [
                      Text(
                        "Filter Pencarian",
                        style: TypographyApp.text1.grey,
                      ),
                      Gap.customGapWidth(4),
                      const Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              Gap.h16,
              const CustomDivider(),
              Gap.h16,
              BlueButton(
                icon: Assets.icons.account.svg(color: Colors.blue),
                text: "Pertanyaan Anda",
              ),
              Gap.h20,
              Text(
                "Semua Pertanyaan",
                style: TypographyApp.text1.black.bold,
              ),
              Gap.h16,
              const QuestionWidget(),
              const QuestionWidget(),
              const QuestionWidget(),
              const QuestionWidget(),
              const QuestionWidget(),
              Gap.h20,
              ButtonWidget.primary(text: "UPDATE", onTap: () {}),
              Gap.h20
            ],
          ),
        ),
      ),
    );
  }
}
