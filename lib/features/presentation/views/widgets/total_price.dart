import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/app_styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});
final String title;
final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.textStyle24,
        ),
        const Spacer(),
        Text(
          value,
          style: AppStyles.textStyle24,
        )
      ],
    );
  }
}
