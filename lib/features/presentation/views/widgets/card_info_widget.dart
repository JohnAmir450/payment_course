import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/app_styles.dart';
import 'package:svg_flutter/svg.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 23),
      margin: const EdgeInsets.only(top: 30),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            22,
          ),
        ),
      ),
      child: Row(children: [
        SvgPicture.asset('assets/images/master card.svg'),
        const SizedBox(width: 22,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Credit Card',style: AppStyles.textStyle18,),
          Text('Mastercard **78',style: AppStyles.textStyle18.copyWith(color: Colors.grey),)
        ],)
      ],),
    );
  }
}