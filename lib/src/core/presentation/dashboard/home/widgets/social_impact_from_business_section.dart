import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class SocialImpactFromBusinessSection extends StatelessWidget {
  const SocialImpactFromBusinessSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Dampak Sosial dari Usahaku",
            style: TypographyApp.text1.black.bold,
          ),
          Gap.h16,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: ColorApp.grey,
                ),
                margin: const EdgeInsets.all(12),
                height: 4,
                width: 4,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Dari bisnis yang Aku Jalankan, telah memperkerjakan",
                      style: TypographyApp.text1.grey,
                    ),
                    Gap.h8,
                    Row(
                      children: [
                        ChipWidget(
                          title: "25",
                          color: ColorApp.blue,
                          style: TypographyApp.text1.bold,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 4,
                          ),
                        ),
                        Gap.w8,
                        Expanded(
                          child: Text(
                            "karyawan",
                            style: TypographyApp.text1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap.h16,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: ColorApp.grey,
                ),
                margin: const EdgeInsets.all(12),
                height: 4,
                width: 4,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Dari bisnis yang Aku Jalankan, telah aku donasikan",
                      style: TypographyApp.text1.grey,
                    ),
                    Gap.h8,
                    Row(
                      children: [
                        ChipWidget(
                          title: "Rp 1.500.000,00",
                          color: ColorApp.blue,
                          style: TypographyApp.text1.bold,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 4,
                          ),
                        ),
                        Gap.w8,
                        Expanded(
                          child: Text(
                            "ke YAYASAN YATIM PIATU",
                            style: TypographyApp.text1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
