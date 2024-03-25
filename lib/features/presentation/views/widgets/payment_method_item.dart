import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,  this.isActive=false, required this.image,
  });
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 500),
      width: 126,
      height: 62,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side:  BorderSide(
                width: 2,
                color: isActive? const Color(0xff34A853):Colors.grey,
              )),
          shadows:  [
            BoxShadow(blurRadius: 3, color:isActive? const Color(0xff34A853):Colors.white)
          ]),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Center(
          child: SvgPicture.asset(
            image,
           
          ),
        ),
      ),
    );
  }
}
