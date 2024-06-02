import 'package:flutter/material.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/core/presentation/dashboard/feed/create_mentoring/widgets/mentoring_schedule.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class CreateMentoringPage extends StatelessWidget {
  const CreateMentoringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        title: const Text("Mentorship"),
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
              Container(
                padding: const EdgeInsets.all(13),
                width: double.infinity,
                height: SizeApp.customHeight(160),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.grey.shade200)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kamu tergabung dalam MENTOR INDOWIRA?\nayo upgrade membership-mu agar Sobat\nIndowira dapat memilihmu sebagai mentor.",
                      maxLines: 3,
                      style: TypographyApp.text1.blue,
                    ),
                    Gap.h20,
                    const YellowButtonStars(
                        text: "Upgrade Membership Sekarang!"),
                  ],
                ),
              ),
              Gap.h16,
              const CustomDivider(),
              Gap.h16,
              const RedBoxAnnouncement(
                  height: 150,
                  headings: "Selamat datang di Komunitas Wira Mentor!",
                  desc:
                      "Marketplace mentor yang dapat mendampingi pelaku UMKM untuk NAIK KELAS."),
              Gap.h16,
              const CustomDivider(),
              Gap.h16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // BlueButton(icon: Assets.icons.account.svg(), text: "Mentor Anda"),
                  BlueButton(
                    icon: Assets.icons.account.svg(color: Colors.blue),
                    text: "Mentoring Anda",
                    width: SizeApp.customWidth(150),
                  ),
                  Gap.h12,
                  BlueButton(
                    icon: Assets.icons.account.svg(color: Colors.blue),
                    text: "Mentoring Selesai",
                    width: SizeApp.customWidth(150),
                  )
                ],
              ),
              Gap.h16,
              const CustomDivider(),
              Gap.h16,
              const Text("Jadwal Mentoring"),
              Gap.h16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 300,
                    child: LinearProgressIndicator(
                      value: 0.6, // Nilai progress (0.0 hingga 1.0)
                      backgroundColor: Colors.grey[200],
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          Colors.pinkAccent),
                    ),
                  ),
                  Gap.w16,
                  const Text("30%")
                ],
              ),
              const MentoringSchedule(
                title: "Mentoring 1",
                close: true,
              ),
              const MentoringSchedule(
                title: "Mentoring 2",
                close: false,
              ),
              const MentoringSchedule(
                title: "Mentoring 3",
                close: false,
              ),
              const MentoringSchedule(
                title: "Mentoring 4",
                close: false,
              ),
              const MentoringSchedule(
                title: "Mentoring 5",
                close: false,
              ),
              Gap.h28
            ],
          ),
        ),
      ),
    );
  }
}
