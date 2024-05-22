import 'package:flutter/material.dart';
import 'package:indowira/gen/assets.gen.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

enum UpgradePlanType {
  komunitas,
  sekolah,
  pengusaha,
}

class UpgradePlanItem extends StatelessWidget {
  final UpgradePlanType upgradePlanType;
  final VoidCallback? onTap;
  const UpgradePlanItem({
    super.key,
    required this.upgradePlanType,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: ColorApp.grey,
          ),
        ),
        padding: const EdgeInsets.all(32),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            switch (upgradePlanType) {
              UpgradePlanType.komunitas => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Aku ingin menjadi",
                      style: TypographyApp.text1,
                    ),
                    Text(
                      "FOUNDER KOMUNITAS",
                      style: TypographyApp.headline3.red,
                    ),
                  ],
                ),
              UpgradePlanType.sekolah => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Aku ingin menjadi",
                      style: TypographyApp.text1,
                    ),
                    Text(
                      "FOUNDER SEKOLAH",
                      style: TypographyApp.headline3.red,
                    ),
                  ],
                ),
              UpgradePlanType.pengusaha => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Aku PENGUSAHA",
                      style: TypographyApp.text1,
                    ),
                    Text(
                      "ingin BEKERJASAMA",
                      style: TypographyApp.headline3.red,
                    ),
                  ],
                ),
            },
            Gap.h32,
            switch (upgradePlanType) {
              UpgradePlanType.komunitas => Assets.svgs.founderKomunitas.svg(),
              UpgradePlanType.sekolah => Assets.svgs.founderSekolah.svg(),
              UpgradePlanType.pengusaha => Assets.svgs.founderPengusaha.svg(),
            },
            Gap.h32,
            switch (upgradePlanType) {
              UpgradePlanType.komunitas => Text(
                  "Aku telah menggalakan kewirausahawan di komunitasku. Komunitas wirausahaku butuh investor. Aku ingin wirausaha komunitas maju.",
                  style: TypographyApp.text1,
                  textAlign: TextAlign.center,
                ),
              UpgradePlanType.sekolah => Text(
                  "Aku tidak hanya menggerakan kegiatan di komunitasku, tapi aku juga mengaktifkan edukasi di komunitasku. Aku ingin buka kelas di komunitasku.",
                  style: TypographyApp.text1,
                  textAlign: TextAlign.center,
                ),
              UpgradePlanType.pengusaha => Text(
                  "Aku telah menggalakan kewirausahawan di komunitasku. Komunitas wirausahaku butuh investor. Aku ingin wirausaha komunitas maju.",
                  style: TypographyApp.text1,
                  textAlign: TextAlign.center,
                ),
            },
            Gap.h20,
            ButtonWidget.primary(
              text: "UPGRADE PLAN",
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
