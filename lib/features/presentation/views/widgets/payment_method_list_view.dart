import 'package:flutter/material.dart';
import 'package:payment_gateway/features/presentation/views/widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
final List<String>images=const[
'assets/images/card.svg',
'assets/images/paypal.svg',

];
int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
            onTap: () {
              activeIndex=index;
              setState(() {
                
              });
            },
            child: PaymentMethodItem(image: images[index],isActive: activeIndex==index,)),
        ),
        itemCount: images.length, 
      ),
    );
  }
}