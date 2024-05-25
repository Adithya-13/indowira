// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/shared/shared.dart';
import 'package:indowira/src/widgets/widgets.dart';

class FeedEntity {
  final String imgProfile;
  final String name;
  final String date;
  final String title;
  final String description;
  final List<String> images;

  FeedEntity({
    required this.imgProfile,
    required this.name,
    required this.date,
    required this.title,
    required this.description,
    required this.images,
  });
}

final dummyFeedEntity = FeedEntity(
  imgProfile:
      'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg',
  name: "Alex Thomas",
  date: "17 April 2018",
  images: [
    'https://a.travel-assets.com/findyours-php/viewfinder/images/res40/481000/481689-Ocean-View-Norfolk.jpg',
    'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg',
    'https://a.travel-assets.com/findyours-php/viewfinder/images/res40/481000/481689-Ocean-View-Norfolk.jpg',
    'https://a.travel-assets.com/findyours-php/viewfinder/images/res40/481000/481689-Ocean-View-Norfolk.jpg',
    'https://a.travel-assets.com/findyours-php/viewfinder/images/res40/481000/481689-Ocean-View-Norfolk.jpg',
  ],
  title: "Added new comment",
  description:
      "Busienss cards represent not only your business, but it also tells people your professionalism",
);

final dummyFeedEntities = [
  dummyFeedEntity,
  dummyFeedEntity,
  dummyFeedEntity,
  dummyFeedEntity,
  dummyFeedEntity,
];

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feed"),
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
      body: ListView.builder(
        padding: EdgeInsets.only(
          bottom: context.mediaQuery.padding.bottom - 24,
          left: 8,
          right: 8,
          top: 8,
        ),
        itemCount: dummyFeedEntities.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final feed = dummyFeedEntities[index];
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
                        feed.imgProfile,
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
                  feed.date,
                  style: TypographyApp.text2.grey,
                ),
                Gap.h8,
                Text(
                  feed.title,
                  style: TypographyApp.text1.black,
                ),
                Gap.h8,
                Text(
                  feed.description,
                  style: TypographyApp.text2.grey,
                ),
                Gap.h8,
                feed.images.length > 1
                    ? Row(
                        children: [
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 4 / 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.network(
                                  feed.images[0],
                                  fit: BoxFit.cover,
                                  height: SizeApp.customHeight(118),
                                ),
                              ),
                            ),
                          ),
                          Gap.w8,
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 4 / 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.network(
                                        feed.images[1],
                                        fit: BoxFit.cover,
                                        height: SizeApp.customHeight(118),
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Container(
                                        color: ColorApp.black.withOpacity(0.7),
                                        child: Center(
                                          child: Text(
                                            "+${feed.images.length - 1}",
                                            style:
                                                TypographyApp.headline3.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: SizeApp.customHeight(118),
                        child: AspectRatio(
                          aspectRatio: 4 / 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              feed.images[0],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
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
    );
  }
}
