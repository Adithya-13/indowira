class LoginState {
  final bool isMitra;
  final bool isObscure;
  const LoginState({
    this.isMitra = false,
    this.isObscure = true,
  });

  LoginState copyWith({
    bool? isMitra,
    bool? isObscure,
  }) {
    return LoginState(
      isMitra: isMitra ?? this.isMitra,
      isObscure: isObscure ?? this.isObscure,
    );
  }
}
