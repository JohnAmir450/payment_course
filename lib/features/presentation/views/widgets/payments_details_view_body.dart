import 'package:flutter/material.dart';
import 'package:payment_gateway/features/presentation/views/widgets/payment_method_list_view.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
       PaymentMethodsListView()
      ],
    );
  }
}
