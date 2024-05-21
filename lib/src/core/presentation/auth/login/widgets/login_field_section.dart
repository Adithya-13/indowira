import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class LoginFieldSection extends ConsumerWidget {
  const LoginFieldSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginControllerProvider);
    final controller = ref.read(loginControllerProvider.notifier);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
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
        Gap.h16,
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              context.pushNamed(Routes.passwordRecovery.name);
            },
            child: Text(
              "Lupa Password?",
              style: TypographyApp.text1.bold.blue,
            ),
          ),
        )
      ],
    );
  }
}
