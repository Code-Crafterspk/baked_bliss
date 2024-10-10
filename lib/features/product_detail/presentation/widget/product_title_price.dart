import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class ProductTitlePrice extends StatelessWidget {
  const ProductTitlePrice({super.key});

  @override
  Widget build(BuildContext context) {
    const playfairDisplayFont = TextStyle(
      fontFamily: FontFamily.playfairDisplay,
      fontSize: 32,
      fontWeight: FontWeight.w900,
    );
    const abhayaLibreFont = TextStyle(
      fontFamily: FontFamily.abhayaLibre,
      fontSize: 31,
      fontWeight: FontWeight.w800,
    );
    const aBeeZeeFont = TextStyle(
      fontFamily: FontFamily.aBeeZee,
      fontSize: 13.5,
      fontWeight: FontWeight.w400,
      color: AppColors.grey,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(
              child: Text(
                'Death by Chocolate',
                style: playfairDisplayFont,
              ),
            ),
            RichText(
              text: TextSpan(
                text: '\$ ',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primaryColor,
                ),
                children: [
                  TextSpan(
                    text: '25',
                    style: abhayaLibreFont.copyWith(color: AppColors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Text(
          'Indulge in decadent chocolate bliss!',
          style: aBeeZeeFont,
        ),
      ],
    );
  }
}
