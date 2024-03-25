import 'package:flutter/material.dart';
import 'package:payment_gateway/core/widgets/custom_app_bar.dart';
import 'package:payment_gateway/features/presentation/views/widgets/cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'My Cart'),
      body: const CartViewBody(),
    );
  }

}
