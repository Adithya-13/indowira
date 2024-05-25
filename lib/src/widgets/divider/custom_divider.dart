import 'package:flutter/material.dart';
import 'package:indowira/src/constants/constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: ColorApp.divider,
      height: 1,
    );
  }
}
