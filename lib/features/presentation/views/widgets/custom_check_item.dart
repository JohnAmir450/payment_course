import 'package:flutter/material.dart';

class CustomCheckItem extends StatelessWidget {
  const CustomCheckItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
        left: 0,
        right: 0,
        top: -50,
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.green,
          child: Icon(
            Icons.check,
            size: 50,
            color: Color(0xffD9D9D9),
          ),
        ));
  }
}
