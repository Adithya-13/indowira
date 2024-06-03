// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class MembershipPage extends StatefulWidget {
  const MembershipPage({super.key});

  @override
  State<MembershipPage> createState() => _MembershipPageState();
}

class _MembershipPageState extends State<MembershipPage> {
  bool isFree = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Membership",
          style: TypographyApp.text1.black,
          textAlign: TextAlign.center,
        ),
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
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: ColorApp.divider),
                    color: ColorApp.white,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Komunitasmu ada iuran anggota, maka CREATE KOMUNITAS dengan type plan yang sesuai kebutuhan komunitasmu',
                        style: TypographyApp.text1.blue,
                      ),
                      Gap.h24,
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: ButtonWidget(
                              text: 'Upgrade Plan Sekarang',
                              color: ColorApp.yellow,
                              buttonType: ButtonType.primary,
                              focusColor: ColorApp.yellow.withOpacity(0.2),
                              sufix: const Icon(
                                Icons.star_rounded,
                                color: ColorApp.white,
                              ),
                              onTap: () {},
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
                Gap.h16,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: ColorApp.lightGrey,
                  ),
                  padding: const EdgeInsets.all(2),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isFree = true;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: SizeApp.h8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: isFree
                                  ? ColorApp.red.withOpacity(0.1)
                                  : ColorApp.white,
                            ),
                            child: Center(
                              child: Text(
                                'FREE',
                                style: isFree
                                    ? TypographyApp.text1.red
                                    : TypographyApp.text1.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isFree = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: SizeApp.h8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: !isFree
                                  ? ColorApp.red.withOpacity(0.1)
                                  : ColorApp.white,
                            ),
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'BERBAYAR',
                                    style: !isFree
                                        ? TypographyApp.text1.red
                                        : TypographyApp.text1.black,
                                  ),
                                  Gap.w16,
                                  const Icon(
                                    Icons.star_rounded,
                                    color: ColorApp.yellow,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap.h16,
                isFree
                    ? const FreeMembershipCard()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CommunityPaidMembershipCard(),
                          Gap.h16,
                          const WorkPaidMembershipCard(),
                          Gap.h16,
                          const TeachPaidMembershipCard(),
                          Gap.h16,
                          const BusinessPaidMembershipCard(),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FreeMembershipCard extends StatelessWidget {
  const FreeMembershipCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: ColorApp.divider),
        color: ColorApp.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'BERWIRAUSAHA',
            style: TypographyApp.text1.black.extraBold,
          ),
          Gap.h16,
          Text(
            'FREE',
            style: TypographyApp.text1.blue,
          ),
          Gap.h16,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Rubah Tagline',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Kelas',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Update Feed',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat News',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Gabung Komunitas Lain',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Forum',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Komunitas',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Jobs',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola WIRA LEADER',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Project',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Melihat Direktori',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Mengelola Iuran Anggota',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Grup',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola Syirkah',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Event',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola Mentoring',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h24,
          ButtonWidget.primary(
            text: 'BUAT KOMUNITAS',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class CommunityPaidMembershipCard extends StatelessWidget {
  const CommunityPaidMembershipCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: ColorApp.divider),
        color: ColorApp.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'BERKOMUNITAS',
            style: TypographyApp.text1.black.extraBold,
          ),
          Gap.h16,
          Text(
            'RP. 5000,-',
            style: TypographyApp.text1.black,
          ),
          Gap.h4,
          Text(
            'Per member / per bulan',
            style: TypographyApp.text2.grey,
          ),
          Gap.h16,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Update Feed',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Event',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Gabung Komunitas Lain',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Kelas',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola WIRA LEADER',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat News',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Melihat Direktori',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Forum',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Rubah Tagline',
                  isChecklist: false,
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Jobs',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Komunitas',
                  isChecklist: false,
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Project',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Mengelola Iuran Anggota',
                  isChecklist: false,
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola Syirkah',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Grup',
                  isChecklist: false,
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola Mentoring',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h24,
          ButtonWidget.primary(
            text: 'UPGRADE',
            onTap: () {
              context.goNamed(Routes.paymentMembership.name);
            },
          ),
        ],
      ),
    );
  }
}

class WorkPaidMembershipCard extends StatelessWidget {
  const WorkPaidMembershipCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: ColorApp.divider),
        color: ColorApp.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'BERKARYA',
            style: TypographyApp.text1.black.extraBold,
          ),
          Gap.h16,
          Text(
            'RP. 10.000,-',
            style: TypographyApp.text1.black,
          ),
          Gap.h4,
          Text(
            'Per member / per bulan',
            style: TypographyApp.text2.grey,
          ),
          Gap.h16,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Update Feed',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Event',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Gabung Komunitas Lain',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Forum',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola WIRA LEADER',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat News',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Melihat Direktori',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Kelas',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Rubah Tagline',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Jobs',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Komunitas',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Project',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Mengelola Iuran Anggota',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola Syirkah',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Grup',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola Mentoring',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h24,
          ButtonWidget.primary(
            text: 'UPGRADE',
            onTap: () {
              context.goNamed(Routes.paymentMembership.name);
            },
          ),
        ],
      ),
    );
  }
}

class TeachPaidMembershipCard extends StatelessWidget {
  const TeachPaidMembershipCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: ColorApp.divider),
        color: ColorApp.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'MENGAJAR',
            style: TypographyApp.text1.black.extraBold,
          ),
          Gap.h16,
          Text(
            'RP. 15.000,-',
            style: TypographyApp.text1.black,
          ),
          Gap.h4,
          Text(
            'Per member / per bulan',
            style: TypographyApp.text2.grey,
          ),
          Gap.h16,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Update Feed',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Event',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Gabung Komunitas Lain',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Forum',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola WIRA LEADER',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat News',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Melihat Direktori',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Kelas',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Rubah Tagline',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Jobs',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Komunitas',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Project',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Mengelola Iuran Anggota',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola Syirkah',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Grup',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola Mentoring',
                  isChecklist: false,
                ),
              ),
            ],
          ),
          Gap.h24,
          ButtonWidget.primary(
            text: 'UPGRADE',
            onTap: () {
              context.goNamed(Routes.paymentMembership.name);
            },
          ),
        ],
      ),
    );
  }
}

class BusinessPaidMembershipCard extends StatelessWidget {
  const BusinessPaidMembershipCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: ColorApp.divider),
        color: ColorApp.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'BERWIRAUSAHA',
            style: TypographyApp.text1.black.extraBold,
          ),
          Gap.h16,
          Text(
            'RP. 20.000,-',
            style: TypographyApp.text1.black,
          ),
          Gap.h4,
          Text(
            'Per member / per bulan',
            style: TypographyApp.text2.grey,
          ),
          Gap.h16,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Update Feed',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Event',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Gabung Komunitas Lain',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Forum',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola WIRA LEADER',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat News',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Melihat Direktori',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Kelas',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Rubah Tagline',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Jobs',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Komunitas',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Project',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Mengelola Iuran Anggota',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola Syirkah',
                ),
              ),
            ],
          ),
          Gap.h8,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Membuat Grup',
                ),
              ),
              Gap.h8,
              const Expanded(
                child: BenefitItemWidget(
                  text: 'Kelola Mentoring',
                ),
              ),
            ],
          ),
          Gap.h24,
          ButtonWidget.primary(
            text: 'UPGRADE',
            onTap: () {
              context.goNamed(Routes.paymentMembership.name);
            },
          ),
        ],
      ),
    );
  }
}

class BenefitItemWidget extends StatelessWidget {
  final bool isChecklist;
  final String text;
  const BenefitItemWidget({
    super.key,
    this.isChecklist = true,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isChecklist ? Assets.icons.checklist.svg() : Assets.icons.close.svg(),
        Gap.w8,
        Expanded(
          child: Text(
            text,
            style: isChecklist
                ? TypographyApp.subText1
                : TypographyApp.subText1.grey,
          ),
        ),
      ],
    );
  }
}
