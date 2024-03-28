import 'package:flutter/material.dart';
import 'package:payment_gateway/core/widgets/custom_button.dart';
import 'package:payment_gateway/features/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment_gateway/features/presentation/views/widgets/payment_method_list_view.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key, });

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
 GlobalKey<FormState>formKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: PaymentMethodsListView(),),
        SliverToBoxAdapter(child: CustomCreditCard(formKey: formKey,),),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 16),
            child: CustomButton(title: 'Complete Payment'),
          )),)
      ],
    );
    
  }
}
