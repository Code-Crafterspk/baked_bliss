import 'package:baked_bliss/features/home/presentation/widget/offer_card.dart';
import 'package:flutter/material.dart';

class OfferBuilder extends StatelessWidget {
  const OfferBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 154,
      child: PageView.builder(
        itemBuilder: (context, index) {
          return const OfferCard();
        },
      ),
    );
  }
}
