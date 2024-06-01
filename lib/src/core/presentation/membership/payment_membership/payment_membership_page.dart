import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/routes/routes.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

class SubscriptionPeriod extends Equatable {
  final String title;
  final String expiredDate;

  const SubscriptionPeriod(this.title, this.expiredDate);

  @override
  List<Object?> get props => [title, expiredDate];
}

class PaymentMethod extends Equatable {
  final String title;
  final String imgUrl;

  const PaymentMethod(this.title, this.imgUrl);

  @override
  List<Object?> get props => [title, imgUrl];
}

final paymentMethodList = [
  const PaymentMethod(
    'Bank BNI',
    'https://cdn3.iconfinder.com/data/icons/banks-in-indonesia-logo-badge/100/BCA-512.png',
  ),
  const PaymentMethod(
    'Bank BCA',
    'https://cdn3.iconfinder.com/data/icons/banks-in-indonesia-logo-badge/100/BCA-512.png',
  ),
  const PaymentMethod(
    'Bank BRI',
    'https://cdn3.iconfinder.com/data/icons/banks-in-indonesia-logo-badge/100/BCA-512.png',
  ),
  const PaymentMethod(
    'Bank BJB',
    'https://cdn3.iconfinder.com/data/icons/banks-in-indonesia-logo-badge/100/BCA-512.png',
  ),
  const PaymentMethod(
    'Bank Jago',
    'https://cdn3.iconfinder.com/data/icons/banks-in-indonesia-logo-badge/100/BCA-512.png',
  ),
  const PaymentMethod(
    'Bank Blu',
    'https://cdn3.iconfinder.com/data/icons/banks-in-indonesia-logo-badge/100/BCA-512.png',
  ),
  const PaymentMethod(
    'Bank Neo',
    'https://cdn3.iconfinder.com/data/icons/banks-in-indonesia-logo-badge/100/BCA-512.png',
  ),
];

final subscriptionPeriodList = [
  const SubscriptionPeriod('1 Bulan', '23 September 2024'),
  const SubscriptionPeriod('3 Bulan', '23 September 2024'),
  const SubscriptionPeriod('6 Bulan', '23 September 2024'),
  const SubscriptionPeriod('1 Tahun', '23 September 2024'),
];

class PaymentMembershipPage extends ConsumerWidget {
  const PaymentMembershipPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Membership",
          style: TypographyApp.text1.black,
          textAlign: TextAlign.center,
        ),
        iconTheme: const IconThemeData(color: ColorApp.grey),
        backgroundColor: ColorApp.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: ColorApp.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        surfaceTintColor: ColorApp.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(8),
          child: CustomDivider(),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Periode Langganan',
                  style: TypographyApp.text1.black.bold,
                ),
                Gap.h16,
                ListView.builder(
                  itemCount: subscriptionPeriodList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = subscriptionPeriodList[index];
                    return SubscriptionPeriodItemWidget(item: item);
                  },
                ),
                Gap.h8,
                Text(
                  'Payment Method',
                  style: TypographyApp.text1.black.bold,
                ),
                Gap.h16,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: ColorApp.white,
                    border: Border.all(color: ColorApp.divider),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Transfer Bank',
                          style: TypographyApp.text1.black,
                        ),
                      ),
                      const RotatedBox(
                        quarterTurns: 3,
                        child: Icon(Icons.chevron_left_rounded),
                      ),
                    ],
                  ),
                ),
                Gap.h8,
                ListView.builder(
                  itemCount: paymentMethodList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = paymentMethodList[index];
                    return PaymentMethodItemWidget(item: item);
                  },
                ),
                Gap.h16,
                Text(
                  'Voucher',
                  style: TypographyApp.text1.bold.black,
                ),
                Gap.h16,
                Row(
                  children: [
                    Expanded(
                      child: InputFormWidget(
                        controller: TextEditingController(),
                        hintText: 'Kode Voucher',
                      ),
                    ),
                    Gap.w16,
                    ButtonWidget.primary(
                      text: 'APPLY',
                      onTap: () {},
                    ),
                  ],
                ),
                Gap.h16,
                Text(
                  'Payment Details',
                  style: TypographyApp.text1.black.bold,
                ),
                Gap.h16,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: ColorApp.white,
                    border: Border.all(color: ColorApp.divider),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Pembayaran Membership',
                        style: TypographyApp.text1.black,
                      ),
                      Gap.h8,
                      Row(
                        children: [
                          Text(
                            'Bulan Januari',
                            style: TypographyApp.text1.black,
                          ),
                          const Spacer(),
                          Text(
                            'Rp. 10.000',
                            style: TypographyApp.text1.black,
                          ),
                        ],
                      ),
                      Gap.h8,
                      Row(
                        children: [
                          Text(
                            'Voucher',
                            style: TypographyApp.text1.black,
                          ),
                          const Spacer(),
                          Text(
                            '-',
                            style: TypographyApp.text1.black,
                          ),
                        ],
                      ),
                      Gap.h12,
                      const CustomDivider(),
                      Gap.h16,
                      Row(
                        children: [
                          Text(
                            'Total Pembayaran',
                            style: TypographyApp.text1.black.bold,
                          ),
                          const Spacer(),
                          Text(
                            'Rp. 10.000',
                            style: TypographyApp.text1.black.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Gap.h12,
                ButtonWidget.primary(
                  text: 'BAYAR SEKARANG',
                  onTap: () {
                    context.goNamed(Routes.communityDetail.name);
                  },
                ),
                Gap.h12,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SubscriptionPeriodItemWidget extends ConsumerWidget {
  const SubscriptionPeriodItemWidget({
    super.key,
    required this.item,
  });

  final SubscriptionPeriod item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(paymentMembershipControllerProvider);
    final controller = ref.read(paymentMembershipControllerProvider.notifier);
    return GestureDetector(
      onTap: () {
        controller.setSelectedSubscriptionPeriod(item);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: ColorApp.white,
          border: Border.all(color: ColorApp.divider),
        ),
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: item == state.selectedSubscriptionPeriod
                    ? ColorApp.yellow.withOpacity(0.2)
                    : ColorApp.divider,
              ),
              height: 16,
              width: 16,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: item == state.selectedSubscriptionPeriod
                        ? ColorApp.yellow
                        : ColorApp.divider,
                  ),
                  width: 10,
                  height: 10,
                ),
              ),
            ),
            Gap.w16,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    item.title,
                    style:
                        TypographyApp.headline3.bold.black.fontSizeCustom(16),
                  ),
                  Gap.h4,
                  Text(
                    'Masa berlaku hingga ${item.expiredDate}',
                    style: TypographyApp.subText1.black.thin,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentMethodItemWidget extends ConsumerWidget {
  const PaymentMethodItemWidget({
    super.key,
    required this.item,
  });

  final PaymentMethod item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(paymentMembershipControllerProvider);
    final controller = ref.read(paymentMembershipControllerProvider.notifier);
    return GestureDetector(
      onTap: () {
        controller.setSelectedPaymentMethod(item);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: ColorApp.white,
          border: Border.all(color: ColorApp.divider),
        ),
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: item == state.selectedPaymentMethod
                    ? ColorApp.yellow.withOpacity(0.2)
                    : ColorApp.divider,
              ),
              height: 16,
              width: 16,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: item == state.selectedPaymentMethod
                        ? ColorApp.yellow
                        : ColorApp.divider,
                  ),
                  width: 10,
                  height: 10,
                ),
              ),
            ),
            Gap.w16,
            Image.network(
              item.imgUrl,
              fit: BoxFit.fitHeight,
              height: SizeApp.w32,
            ),
            Gap.w16,
            Expanded(
              child: Text(
                item.title,
                style: TypographyApp.subText1.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
