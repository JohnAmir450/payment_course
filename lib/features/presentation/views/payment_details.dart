import 'package:flutter/material.dart';
import 'package:payment_gateway/core/widgets/custom_app_bar.dart';
import 'package:payment_gateway/core/widgets/custom_button.dart';
import 'package:payment_gateway/features/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment_gateway/features/presentation/views/widgets/payments_details_view_body.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Payment Details'),
      body:const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child:  PaymentDetailsBody() ,),
          SliverToBoxAdapter(child: CustomCreditCard(),),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 16),
                child: CustomButton(title: 'Pay'),
              )),),

            
        ],
      )
    );
  }
}


