import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hovering/hovering.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Akun"),
        iconTheme: const IconThemeData(color: ColorApp.grey),
        actions: [
          Assets.icons.search.svg(),
          Gap.w8,
          Assets.icons.notification.svg(),
          Gap.w8,
          Assets.icons.archive.svg(),
          Gap.w16,
        ],
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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap.h16,
          // Section 1 : identifying user and name including profile picture
          const UserProfile(),
          const CustomDivider(),
          const OptionProfile()
        ],
      ),
    );
  }
}

class OptionProfile extends StatelessWidget {
  const OptionProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
        child: SafeArea(
          child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          Gap.h20,
          GestureDetector(
            
            onTap: () {
              print('Container clicked');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icons.account.path,
                  color: Colors.black,),
                  Gap.w8,
                  Text('My App', style: TypographyApp.text1.fontSizeCustom(16).black,),
                  Gap.customGapWidth(210),
                  const Align(alignment:Alignment.topRight, child: Icon(Icons.arrow_forward_ios, size: 20,))
                  ],
              ),
            ),
          ),
          
          Gap.h12,
           GestureDetector(
            onTap: () {
              print('Container clicked');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icons.account.path,
                  color: Colors.black,),
                  Gap.w8,
                  Text('Transaksiku', style: TypographyApp.text1.fontSizeCustom(16).black,),
                  Gap.customGapWidth(175),
                  const Align(alignment:Alignment.topRight, child: Icon(Icons.arrow_forward_ios,size: 20,))
                  ],
              ),
            ),
          ),
          
          Gap.h12,
           GestureDetector(
            onTap: () {
              print('Container clicked');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icons.account.path,
                  color: Colors.black,),
                  Gap.w8,
                  Text('Settings', style: TypographyApp.text1.fontSizeCustom(16).black,),
                  Gap.customGapWidth(200),
                  const Align(alignment:Alignment.topRight, child: Icon(Icons.arrow_forward_ios,size: 20,))
                  ],
              ),
            ),
          ),
          
          Gap.h12,
           GestureDetector(
            onTap: () {
              print('Container clicked');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icons.account.path,
                  color: Colors.black,),
                  Gap.w8,
                  Text('Log Out', style: TypographyApp.text1.fontSizeCustom(16).black,),
                  Gap.customGapWidth(205),
                  Align(alignment:Alignment.topRight, child: Icon(Icons.arrow_forward_ios, size: 20,))
                  ],
              ),
            ),
          ),
                ],
              ),
        ));
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "FREE PLAN",
            style: TypographyApp.text1.black.red,
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Gap.h8,
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    width: 120,
                    height: 120,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        textAlign: TextAlign.left,
                        "Selamat Datang",
                        style:
                            TypographyApp.text1.fontSizeCustom(12).normal.grey),
                    Gap.h4,
                    Text("HERY PRIYABUDI",
                        style: TypographyApp.headline3
                            .fontSizeCustom(16)
                            .normal
                            .black
                            .bold),
                    Gap.h12,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: ColorApp.lightGrey,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      child: Text(
                        "USER",
                        style: TypographyApp.text2.fontSizeCustom(16).grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap.h8,
          Gap.h12,
        ],
      ),
    );
  }
}
