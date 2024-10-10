import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    const playfairDisplayFont = TextStyle(
      fontFamily: FontFamily.playfairDisplay,
      fontSize: 32,
      fontWeight: FontWeight.w900,
    );

    const actorFont = TextStyle(
      fontFamily: FontFamily.actor,
      fontSize: 13.5,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: playfairDisplayFont.copyWith(fontSize: 18),
        ),
        const SizedBox(height: 15),
        const Text(
          'Our Death by Chocolate Cake is a rich, indulgent treat layered with dark chocolate, creamy ganache, and topped with chocolate chips. Perfect for satisfying any chocolate lover\'s cravings!',
          style: actorFont,
        ),
      ],
    );
  }
}
