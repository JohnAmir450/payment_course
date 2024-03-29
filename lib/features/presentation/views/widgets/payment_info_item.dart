import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/app_styles.dart';

class PaymentInfoItem extends StatelessWidget {
  const PaymentInfoItem({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.textStyle18,
        ),
        Text(
          value,
          style: AppStyles.textStyle18,
        ),
      ],
    );
  }
}
