import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/widgets/widgets.dart';

class RegisterFieldSection extends ConsumerWidget {
  const RegisterFieldSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerControllerProvider);
    final controller = ref.read(registerControllerProvider.notifier);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InputFormWidget(
          controller: controller.nameController,
          hintText: "Nama Lengkap",
        ),
        Gap.h8,
        InputFormWidget(
          controller: controller.emailController,
          hintText: "Email",
        ),
        Gap.h8,
        InputFormWidget.password(
          controller: controller.passwordController,
          hintText: "Password",
          isObscure: state.isObscure,
          onObscureTap: controller.onObscureTap,
        ),
        if (state.isMitra) ...[
          Gap.h8,
          InputFormWidget(
            controller: controller.categoryController,
            hintText: "Kategori",
          ),
        ],
      ],
    );
  }
}
