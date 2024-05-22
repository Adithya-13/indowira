import 'package:flutter/material.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';

class WelcomeBannerSection extends StatelessWidget {
  const WelcomeBannerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Assets.svgs.welcomeBanner.svg(
        fit: BoxFit.fitWidth,
        width: context.screenWidth - 32,
      ),
    );
  }
}
