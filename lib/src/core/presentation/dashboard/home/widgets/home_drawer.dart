import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorApp.scaffold,
      width: context.screenWidth * 0.8,
      child: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: PaddingWidget(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.close_rounded,
                      color: ColorApp.grey,
                    ),
                  ),
                ),
                Gap.h8,
                Assets.images.logo.image(
                  fit: BoxFit.fitHeight,
                  height: 64,
                ),
                Gap.h8,
                Text(
                  "INDOWIRA",
                  style: TypographyApp.text1.bold.black,
                ),
                Gap.h16,
                ButtonWidget.outlined(
                  text: "DETAIL KOMUNITAS",
                  onTap: () {},
                ),
                Gap.h8,
                ButtonWidget.primary(
                  text: "GANTI KOMUNITAS",
                  onTap: () {
                    Navigator.pop(context);
                    showCupertinoModalBottomSheet(
                      context: context,
                      expand: false,
                      builder: (context) => Material(
                        child: SafeArea(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(32, 8, 32, 20),
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
                                  "Ganti Komunitas",
                                  style: TypographyApp.text1.black
                                      .fontSizeCustom(16),
                                ),
                                Gap.h16,
                                ChangeCommunityItem(
                                  title: "Alumni ITB 2020",
                                  img: Assets.images.freelancerLogo.path,
                                  createdBy: 'Hery',
                                  onTap: () {
                                    context.goNamed(Routes.profileMember.name);
                                  },
                                ),
                                Gap.h16,
                                ChangeCommunityItem(
                                  title: "Perumahan BSD",
                                  img: Assets.images.freelancerLogo.path,
                                  createdBy: 'Hery',
                                  onTap: () {
                                    context.goNamed(Routes.profileMember.name);
                                  },
                                ),
                                Gap.h16,
                                ChangeCommunityItem(
                                  title: "Trah Keluarga Dimas",
                                  img: Assets.images.freelancerLogo.path,
                                  createdBy: 'Hery',
                                  onTap: () {
                                    context.goNamed(Routes.profileMember.name);
                                  },
                                ),
                                Gap.h16,
                                ChangeCommunityItem(
                                  title: "Freelancer",
                                  img: Assets.images.freelancerLogo.path,
                                  createdBy: 'Hery',
                                  onTap: () {
                                    context.goNamed(Routes.profileMember.name);
                                  },
                                ),
                                Gap.h16,
                                ChangeCommunityItem(
                                  title: "Sepedaan",
                                  img: Assets.images.sepedaanLogo.path,
                                  createdBy: 'Hery',
                                  onTap: () {
                                    context.goNamed(Routes.profileMember.name);
                                  },
                                ),
                                Gap.h16,
                                ChangeCommunityItem(
                                  title: "Masak Asik",
                                  img: Assets.images.masakAsikLogo.path,
                                  createdBy: 'Hery',
                                  onTap: () {
                                    context.goNamed(Routes.profileMember.name);
                                  },
                                ),
                                Gap.h16,
                                ButtonWidget.primary(
                                  text: "BUAT KOMUNITAS",
                                  onTap: () {
                                    context.goNamed(Routes.profileMember.name);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Gap.h16,
                const CustomDivider(),
                Gap.h16,
                Container(
                  decoration: BoxDecoration(
                    color: ColorApp.lightGrey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorApp.yellow,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.only(bottom: 4),
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorApp.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Lengkapi Profile Member Komunitas",
                            style: TypographyApp.text2.yellow.bold,
                          ),
                          Gap.h16,
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: ColorApp.grey,
                                ),
                                height: 32,
                                width: 32,
                              ),
                              Gap.w8,
                              const Icon(
                                Icons.checklist,
                                color: ColorApp.grey,
                              ),
                              Gap.w4,
                              Text(
                                "4/5",
                                style: TypographyApp.text1,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Gap.h16,
                const CustomDivider(),
                Gap.h20,
                Row(
                  children: [
                    Expanded(
                      child: ActionDrawerButton(
                        svg: Assets.svgs.komunitasDrawer,
                        text: "Komunitas",
                      ),
                    ),
                    Expanded(
                      child: ActionDrawerButton(
                        svg: Assets.svgs.pengurusDrawer,
                        text: "Pengurus",
                      ),
                    ),
                    Expanded(
                      child: ActionDrawerButton(
                        svg: Assets.svgs.memberDrawer,
                        text: "Member",
                        onTap: () {
                          context.pushNamed(Routes.directoryMember.name);
                        },
                      ),
                    ),
                  ],
                ),
                Gap.h20,
                Row(
                  children: [
                    Expanded(
                      child: ActionDrawerButton(
                        svg: Assets.svgs.pengumumanDrawer,
                        text: "Pengumuman",
                        onTap: () {
                          context.pushNamed(Routes.announcement.name);
                        },
                      ),
                    ),
                    Expanded(
                      child: ActionDrawerButton(
                        svg: Assets.svgs.membershipDrawer,
                        text: "Membership",
                      ),
                    ),
                    Expanded(
                      child: ActionDrawerButton(
                        svg: Assets.svgs.laporanDrawer,
                        text: "Laporan",
                        onTap: () {
                          context.pushNamed(Routes.reportDashboard.name);
                        },
                      ),
                    ),
                  ],
                ),
                Gap.h20,
                const CustomDivider(),
                Gap.h20,
                Text(
                  "Directory",
                  style: TypographyApp.text1,
                ),
                Gap.h20,
                Row(
                  children: [
                    Expanded(
                      child: ActionDrawerButton(
                        svg: Assets.svgs.usahaDrawer,
                        text: "Usaha",
                        width: SizeApp.w24,
                      ),
                    ),
                    Expanded(
                      child: ActionDrawerButton(
                        svg: Assets.svgs.startUpDrawer,
                        text: "Startup",
                        width: SizeApp.w24,
                      ),
                    ),
                    Expanded(
                      child: ActionDrawerButton(
                        svg: Assets.svgs.supportDrawer,
                        text: "Support",
                        width: SizeApp.w24,
                      ),
                    ),
                    Expanded(
                      child: ActionDrawerButton(
                        svg: Assets.svgs.mentorDrawer,
                        text: "Mentor",
                        width: SizeApp.w24,
                      ),
                    ),
                  ],
                ),
                Gap.h20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: ActionDrawerButton(
                        svg: Assets.svgs.resellerDrawer,
                        text: "Reseller",
                        width: SizeApp.w24,
                      ),
                    ),
                    Flexible(
                      child: ActionDrawerButton(
                        svg: Assets.svgs.charityDrawer,
                        text: "Charity",
                        width: SizeApp.w24,
                      ),
                    ),
                    Flexible(
                      child: ActionDrawerButton(
                        svg: Assets.svgs.syirkahDrawer,
                        text: "Syirkah",
                        width: SizeApp.w24,
                      ),
                    ),
                  ],
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

class ChangeCommunityItem extends StatelessWidget {
  final VoidCallback onTap;
  final String img;
  final String title;
  final String createdBy;
  const ChangeCommunityItem({
    super.key,
    required this.onTap,
    required this.img,
    required this.title,
    required this.createdBy,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: ColorApp.grey,
            image: DecorationImage(
              image: AssetImage(img),
            ),
          ),
          height: 36,
          width: 36,
        ),
        Gap.w16,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TypographyApp.text1.black,
              ),
              Gap.h4,
              Text(
                "Oleh $createdBy",
                style: TypographyApp.text2.grey,
              ),
            ],
          ),
        ),
        ButtonWidget.outlined(
          text: "PILIH",
          onTap: onTap,
        )
      ],
    );
  }
}

class ActionDrawerButton extends StatelessWidget {
  final VoidCallback? onTap;
  final SvgGenImage svg;
  final String text;
  final double? width;
  const ActionDrawerButton({
    super.key,
    this.onTap,
    required this.svg,
    required this.text,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            svg.svg(
              width: width ?? SizeApp.w32,
              fit: BoxFit.fitWidth,
              color: ColorApp.grey,
            ),
            AutoSizeText(
              text,
              style: TypographyApp.subText1.grey,
            ),
          ],
        ),
      ),
    );
  }
}
