import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class ActivitiesSection extends StatelessWidget {
  const ActivitiesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Kegiatanku",
            style: TypographyApp.text1.black.bold,
          ),
          Gap.h16,
          Row(
            children: [
              const Expanded(
                child: ActivityItem(
                  count: 35,
                  type: "Grup",
                ),
              ),
              Gap.w20,
              const Expanded(
                child: ActivityItem(
                  count: 54,
                  type: "Event",
                ),
              ),
            ],
          ),
          Gap.h20,
          Row(
            children: [
              const Expanded(
                child: ActivityItem(
                  count: 2,
                  type: "Kelas",
                ),
              ),
              Gap.w20,
              const Expanded(
                child: ActivityItem(
                  count: 9,
                  type: "Forum",
                ),
              ),
            ],
          ),
          Gap.h20,
          Row(
            children: [
              const Expanded(
                child: ActivityItem(
                  count: 0,
                  type: "Jobs",
                ),
              ),
              Gap.w20,
              const Expanded(
                child: ActivityItem(
                  count: 11,
                  type: "Artikel",
                ),
              ),
            ],
          ),
          Gap.h20,
          const Row(
            children: [
              Expanded(
                child: ActivityItem(
                  count: 21,
                  type: "Project",
                ),
              ),
            ],
          ),
          Gap.h20,
        ],
      ),
    );
  }
}

class ActivityItem extends StatelessWidget {
  final int count;
  final String type;
  const ActivityItem({
    super.key,
    required this.count,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorApp.red.withOpacity(0.1),
      ),
      padding: EdgeInsets.symmetric(
        vertical: SizeApp.h40,
      ),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "$count",
            style: TypographyApp.headline1.red.bold,
          ),
          Text(
            type,
            style: TypographyApp.headline3.red.normal,
          ),
        ],
      ),
    );
  }
}
