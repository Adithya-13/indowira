import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:indowira/src/core/core.dart';

class LoginController extends StateNotifier<RegisterState> {
  LoginController() : super(const RegisterState());

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final categoryController = TextEditingController();

  void changeTab({bool isMitra = false}) {
    state = state.copyWith(
      isMitra: isMitra,
    );
  }

  void onObscureTap() {
    state = state.copyWith(
      isObscure: !state.isObscure,
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    categoryController.dispose();
    super.dispose();
  }
}

final loginControllerProvider =
    StateNotifierProvider<LoginController, RegisterState>((ref) {
  return LoginController();
});
