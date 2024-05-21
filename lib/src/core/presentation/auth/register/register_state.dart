// ignore_for_file: public_member_api_docs, sort_constructors_first
class RegisterState {
  final bool isMitra;
  final bool isObscure;
  const RegisterState({
    this.isMitra = false,
    this.isObscure = true,
  });

  RegisterState copyWith({
    bool? isMitra,
    bool? isObscure,
  }) {
    return RegisterState(
      isMitra: isMitra ?? this.isMitra,
      isObscure: isObscure ?? this.isObscure,
    );
  }
}
