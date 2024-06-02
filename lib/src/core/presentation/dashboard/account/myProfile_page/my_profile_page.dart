import 'package:flutter/material.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Profile"),
          iconTheme: const IconThemeData(color: ColorApp.grey),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(8),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 1,
                  color: ColorApp.grey,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            const MyStackWidget(),
            Gap.h16,
            PaddingWidget(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: TypographyApp.text1.grey.fontSizeCustom(17),
                    ),
                    Gap.h16,
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          const DataProfile(
                            title: "NIK",
                            data: "123 123 123",
                          ),
                          Gap.h12,
                          const DataProfile(
                              title: "Bio",
                              data:
                                  "Affiliate marketing is the latest trend online. With so many products to sell and services to offer, sometimes displaying it on one site isn’t enough."),
                        ],
                      ),
                    ),
                    Gap.h16,
                    Text(
                      "Profile Details",
                      style: TypographyApp.text1.grey.fontSizeCustom(17),
                    ),
                    Gap.h16,
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Gap.h8,
                          const ProfileDetails(
                              icon: Icon(
                                Icons.email_outlined,
                                color: Colors.grey,
                              ),
                              label: "Email",
                              content: "johanna.stevens@gmail.com"),
                          Gap.h12,
                          const ProfileDetails(
                              icon: Icon(
                                Icons.phone,
                                color: Colors.grey,
                              ),
                              label: "Phone",
                              content: "402-001-4477"),
                          Gap.h12,
                          const ProfileDetails(
                              icon: Icon(
                                Icons.location_on_outlined,
                                color: Colors.grey,
                              ),
                              label: "Address",
                              content: "682 Shakira Tunnel Suite 539"),
                          Gap.h12,
                        ],
                      ),
                    ),
                    Gap.h16,
                    Container(
                      width: double.infinity,
                      height: SizeApp.customHeight(240),
                      color: Colors.grey,
                    ),
                    Gap.h16,
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: SizeApp.h52,
                                height: SizeApp.h52,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(52)),
                              ),
                              Gap.w12,
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: ColorApp.lightGrey)),
                                  padding: const EdgeInsets.all(10),
                                  width: SizeApp.w72,
                                  height: SizeApp.h40,
                                  child: Text(
                                    "Start Post",
                                    style: TypographyApp.text1.grey,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Gap.h16,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconPostWidget(
                                  icon: Icon(
                                    Icons.event_available,
                                    color: Colors.blue,
                                  ),
                                  title: "Event"),
                              IconPostWidget(
                                  icon: Icon(
                                    Icons.article,
                                    color: Colors.red,
                                  ),
                                  title: "Artikel"),
                              IconPostWidget(
                                  icon: Icon(
                                    Icons.badge,
                                    color: Colors.green,
                                  ),
                                  title: "Lowongan/Jobs"),
                            ],
                          ),
                          Gap.h16,
                          Row(
                            children: [
                              Gap.w16,
                              const IconPostWidget(
                                  icon: Icon(
                                    Icons.account_circle_outlined,
                                    color: Colors.orange,
                                  ),
                                  title: "Forum"),
                              Gap.w24,
                              const Expanded(
                                child: IconPostWidget(
                                    icon: Icon(
                                      Icons.article_outlined,
                                      color: Colors.purple,
                                    ),
                                    title: "Projects"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Gap.h20,
                    const PostProfile(),
                    Gap.h16,
                    const PostProfile(),
                    Gap.h16,
                    const PostProfile(),
                    Gap.h80
                  ]),
            ),
          ]),
        ));
  }
}

class PostProfile extends StatelessWidget {
  const PostProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: SizeApp.h52,
                height: SizeApp.h52,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(52)),
              ),
              Gap.w12,
              const Expanded(child: Text("Alex Thomas")),
              const Icon(Icons.more_vert),
            ],
          ),
          Gap.h12,
          Text(
            "17 Apr 2018",
            style: TypographyApp.text2.grey,
          ),
          Gap.h12,
          Text(
            "Added new comment",
            style: TypographyApp.text1.black,
          ),
          Gap.h12,
          Text(
            "Business cards represent not only your business, but it also tells people your professionalism.",
            style: TypographyApp.text2.grey,
          ),
          Gap.h16,
          Row(
            children: [
              Container(
                width: SizeApp.customWidth(160),
                height: SizeApp.customHeight(100),
                color: Colors.grey,
              ),
              Gap.w4,
              Container(
                width: SizeApp.customWidth(160),
                height: SizeApp.customHeight(100),
                color: Colors.grey,
              )
            ],
          ),
          Gap.h16,
          Row(
            children: [
              Assets.svgs.like.svg(),
              Gap.w12,
              Assets.svgs.comment.svg(),
              Gap.w12,
              Assets.svgs.share.svg(),
            ],
          ),
        ],
      ),
    );
  }
}

class IconPostWidget extends StatelessWidget {
  final Widget icon;
  final String title;

  const IconPostWidget({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        Gap.w4,
        Text(
          title,
          style: TypographyApp.text2.grey,
        )
      ],
    );
  }
}

class ProfileDetails extends StatelessWidget {
  final Widget icon;
  final String label;
  final String content;

  const ProfileDetails({
    required this.icon,
    required this.label,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        Gap.w20,
        Expanded(child: Text(label)),
        Text(content),
        Gap.h12,
      ],
    );
  }
}

class MyStackWidget extends StatelessWidget {
  const MyStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Dasar Container
        Container(
          color: Colors.grey.shade200,
          width: double.infinity,
          height: SizeApp.customHeight(380),
        ),
        // Efek Blur di atas Container dasar

        // Elemen lain di atas Container dasar

        PaddingWidget(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap.h20,
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  alignment: Alignment.center,
                  width: SizeApp.customWidth(140),
                  height: SizeApp.h40,
                  color: Colors.grey.shade300,
                  child: Text(
                    "CHANGE COVER",
                    style: TypographyApp.subText1.grey.bold.fontSizeCustom(15),
                  ),
                ),
              ),
              Container(
                  // margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  width: SizeApp.customWidth(120),
                  height: SizeApp.customWidth(120),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(120)),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 13, 0),
                          width: SizeApp.customWidth(20),
                          height: SizeApp.customWidth(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24)),
                          child: Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(4, 4, 0, 0),
                                width: SizeApp.customWidth(13),
                                height: SizeApp.customWidth(13),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(24)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              Gap.h20,
              Text(
                "HERY PRIYABUDI",
                style: TypographyApp.headline3.black,
              ),
              Gap.h8,
              Text(
                "UI/UX DESIGNER",
                style: TypographyApp.text1.grey.fontSizeCustom(16),
              ),
              Gap.h32,
              Row(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      SocialMediaWidget(
                          icon: Assets.svgs.facebook.svg(color: ColorApp.red)),
                      Gap.w12,
                      SocialMediaWidget(
                          icon: Assets.svgs.path.svg(width: 2, height: 2)),
                      Gap.w12,
                      SocialMediaWidget(
                          icon: Assets.svgs.twitter.svg(width: 5, height: 5)),
                      Gap.w12,
                      SocialMediaWidget(
                          icon: Assets.svgs.linkedin.svg(width: 5)),
                    ],
                  )),
                  Container(
                    alignment: Alignment.center,
                    width: SizeApp.customWidth(130),
                    height: SizeApp.h40,
                    decoration: BoxDecoration(
                        color: ColorApp.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: ColorApp.red)),
                    child: Text(
                      "EDIT PROFILE",
                      style: TypographyApp.text1.red.bold,
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class DataProfile extends StatelessWidget {
  final String title;
  final String data;

  const DataProfile({
    required this.title,
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TypographyApp.text1.black.fontSizeCustom(17),
          ),
          Gap.h12,
          Text(
            data,
            style: TypographyApp.text1.grey.fontSizeCustom(15),
          ),
        ],
      ),
    );
  }
}

class SocialMediaWidget extends StatelessWidget {
  final Widget icon;

  const SocialMediaWidget({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: SizeApp.h32,
        height: SizeApp.h32,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(56)),
        child: icon,
      ),
    );
  }
}
