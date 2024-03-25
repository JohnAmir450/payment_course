import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.title, this.onTap,
  });
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(width: double.infinity,height: 75,
      decoration: BoxDecoration(color: const Color(0xff34A853),
      borderRadius: BorderRadius.circular(22),
      ),
      child: Center(child: Text(title,style: AppStyles.textStyle22,)),
      ),
    );
  }
}
