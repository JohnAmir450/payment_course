import 'package:flutter/material.dart';
import 'package:payment_gateway/features/presentation/views/widgets/custom_check_item.dart';
import 'package:payment_gateway/features/presentation/views/widgets/custom_dashed_line.dart';
import 'package:payment_gateway/features/presentation/views/widgets/thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCard(),
          Positioned(
              right: 0,
              left: 0,
              bottom: MediaQuery.sizeOf(context).height * .22,
              child: const CustomDashedLine()),
          Positioned(
              left: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              right: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          const CustomCheckItem()
        ],
      ),
    );
  }
}





