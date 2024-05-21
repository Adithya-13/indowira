import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/core/domain/community.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class SignAsPage extends StatelessWidget {
  const SignAsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeApp.w12),
            child: Container(
              decoration: BoxDecoration(
                color: ColorApp.white,
                borderRadius: BorderRadius.circular(8.r),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: SizeApp.w16, vertical: SizeApp.h32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      "Pilih Komunitas",
                      style: TypographyApp.headline3,
                    ),
                  ),
                  Gap.h16,
                  Row(
                    children: [
                      Expanded(
                        child: InputFormWidget(
                          controller: TextEditingController(),
                          hintText: "Cari Komunitas",
                          prefix: const Icon(
                            Icons.search_rounded,
                            color: ColorApp.grey,
                          ),
                        ),
                      ),
                      Gap.w16,
                      ButtonWidget.primary(
                        text: "Search",
                        onTap: () {},
                      ),
                    ],
                  ),
                  Gap.h16,
                  ListView.builder(
                    itemCount: dummyCommunityList.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final community = dummyCommunityList[index];
                      return CommunityListTile(community: community);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CommunityListTile extends StatelessWidget {
  const CommunityListTile({
    super.key,
    required this.community,
  });

  final Community community;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeApp.h16),
      child: GestureDetector(
        onTap: () {
          context.goNamed(Routes.home.name);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: ColorApp.white,
            border: Border.all(color: ColorApp.lightGrey),
          ),
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              SizedBox(
                width: SizeApp.customHeight(60),
                height: SizeApp.customHeight(60),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      community.image,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Gap.w16,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    community.name,
                    style: TypographyApp.text1.black,
                  ),
                  Text(
                    "Oleh ${community.createdBy}",
                    style: TypographyApp.text2.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
