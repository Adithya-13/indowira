import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/constants/themes/themes.dart';

class BlueButton extends StatelessWidget {
  final String text;
  final Widget icon;
  final double? width; // Tambahkan parameter width opsional

  const BlueButton({
    required this.icon,
    required this.text,
    this.width, // Inisialisasi parameter width
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width ??
            double
                .maxFinite, // Gunakan width jika ada, atau double.maxFinite jika tidak
        height: 52, // Misalkan SizeApp.h52 adalah 52
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(255, 242, 248, 252),
          border: Border.all(color: Colors.blue),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Gap.w8, // Tambahkan spasi antara ikon dan teks
            Text(
              text,
              style: const TextStyle(
                  color:
                      Colors.blue), // Sesuaikan dengan TypographyApp.text1.blue
            ),
          ],
        ),
      ),
    );
  }
}
