// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:indowira/src/core/core.dart';

class PaymentMembershipState {
  final SubscriptionPeriod? selectedSubscriptionPeriod;
  final PaymentMethod? selectedPaymentMethod;
  final String? voucher;

  const PaymentMembershipState({
    this.selectedSubscriptionPeriod,
    this.selectedPaymentMethod,
    this.voucher,
  });

  PaymentMembershipState copyWith({
    SubscriptionPeriod? selectedSubscriptionPeriod,
    PaymentMethod? selectedPaymentMethod,
    String? voucher,
  }) {
    return PaymentMembershipState(
      selectedSubscriptionPeriod:
          selectedSubscriptionPeriod ?? this.selectedSubscriptionPeriod,
      selectedPaymentMethod:
          selectedPaymentMethod ?? this.selectedPaymentMethod,
      voucher: voucher ?? this.voucher,
    );
  }
}
