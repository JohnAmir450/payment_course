import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/app_styles.dart';
import 'package:payment_gateway/features/presentation/views/widgets/card_info_widget.dart';
import 'package:payment_gateway/features/presentation/views/widgets/payment_info_item.dart';
import 'package:payment_gateway/features/presentation/views/widgets/total_price.dart';


class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xffD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 4, right: 4),
        child: Column(
          children: [
            Text(
              'Thank You',
              style: AppStyles.textStyle25,
            ),
            Text(
              'Your Transaction was successful',
              style: AppStyles.textStyle18,
            ),
            const SizedBox(
              height: 40,
            ),
            const PaymentInfoItem(
              title: 'Date',
              value: '01/24/2023',
            ),
            const PaymentInfoItem(
              title: 'Time',
              value: '10:15 AM',
            ),
            const PaymentInfoItem(
              title: 'To',
              value: 'Sam Louis',
            ),
            const Divider(
              thickness: 2,
              height: 20,
            ),
            const TotalPrice(title: 'Total', value: '\$50.97'),
            const CardInfoWidget()
          ],
        ),
      ),
    );
  }
}



