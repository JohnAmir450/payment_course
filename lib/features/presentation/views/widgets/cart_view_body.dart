import 'package:flutter/material.dart';
import 'package:payment_gateway/core/widgets/custom_button.dart';
import 'package:payment_gateway/features/presentation/views/payment_details.dart';
import 'package:payment_gateway/features/presentation/views/widgets/order_info_item.dart';
import 'package:payment_gateway/features/presentation/views/widgets/payment_method_list_view.dart';
import 'package:payment_gateway/features/presentation/views/widgets/total_price.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.5,
                width: double.infinity,
                child: Image.asset('assets/images/cart.png')),
            const SizedBox(
              height: 25,
            ),
            const OrderInfoItem(
              title: 'Order Subtotal',
              value: '\$42.97',
            ),
            const SizedBox(
              height: 3,
            ),
            const OrderInfoItem(
              title: 'Discount',
              value: '\$0',
            ),
            const SizedBox(
              height: 3,
            ),
            const OrderInfoItem(
              title: 'Shipping',
              value: '\$8',
            ), 
            const Divider(
              height: 34,
              indent: 20,
              endIndent: 20,
              thickness: 2,
            ),
            const TotalPrice(
              title: 'Total',
              value: '\$50.97',
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              // onTap: () {
              //   Navigator.of(context).push(
              //     MaterialPageRoute(
              //       builder: (context) =>const PaymentDetails(),
              //     ),
              //   );
              // },
              onTap: (){
                showModalBottomSheet(context: context, builder: (context){
                    return const PaymentMethodsBottomSheet();
                });
              },
              title: 'Complete Payment',
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16,),
        PaymentMethodsListView(),
        SizedBox(height: 32,),
        CustomButton(title: 'Pay')
      ],),
    );
  }
}