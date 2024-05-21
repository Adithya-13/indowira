import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';

class RegisterTabSection extends ConsumerWidget {
  const RegisterTabSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerControllerProvider);
    final controller = ref.read(registerControllerProvider.notifier);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: ColorApp.lightGrey,
      ),
      padding: const EdgeInsets.all(2),
      child: Row(
        children: [
          Expanded(
            child: _tabButton(
              "ANGGOTA",
              !state.isMitra,
              onTap: () {
                controller.changeTab(isMitra: false);
              },
            ),
          ),
          Expanded(
            child: _tabButton(
              "MITRA",
              state.isMitra,
              onTap: () {
                controller.changeTab(isMitra: true);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _tabButton(String text, bool isSelected, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: SizeApp.h8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          color: isSelected ? ColorApp.lightGrey : ColorApp.white,
        ),
        child: Center(
          child: Text(
            text,
            style: isSelected
                ? TypographyApp.text1.blue
                : TypographyApp.text1.black,
          ),
        ),
      ),
    );
  }
}
