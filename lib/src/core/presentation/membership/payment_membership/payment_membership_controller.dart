import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:indowira/src/core/core.dart';

class PaymentMembershipController
    extends StateNotifier<PaymentMembershipState> {
  PaymentMembershipController() : super(const PaymentMembershipState());

  void setSelectedSubscriptionPeriod(SubscriptionPeriod subscriptionPeriod) {
    state = state.copyWith(selectedSubscriptionPeriod: subscriptionPeriod);
  }

  void setSelectedPaymentMethod(PaymentMethod paymentMethod) {
    state = state.copyWith(selectedPaymentMethod: paymentMethod);
  }
}

final paymentMembershipControllerProvider =
    StateNotifierProvider<PaymentMembershipController, PaymentMembershipState>(
        (ref) {
  return PaymentMembershipController();
});
