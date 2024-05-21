import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';

class TypeAccountSection extends ConsumerWidget {
  const TypeAccountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerControllerProvider);
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: state.isMitra ? "*Mitra" : "*Anggota Komunitas:",
              style: TypographyApp.text1.bold,
            ),
            TextSpan(
              text: state.isMitra
                  ? " Untuk kamu Orang Indonesia yang Berani support sebanyak2nya komunitas"
                  : " Untuk kamu Orang Indonesia yang Berani memberdayakan Komunitasmu.",
            )
          ],
        ),
        style: TypographyApp.text1,
        textAlign: TextAlign.center,
      ),
    );
  }
}
