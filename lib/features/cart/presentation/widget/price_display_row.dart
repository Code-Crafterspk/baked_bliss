import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class PriceDisplayRow extends StatelessWidget {
  const PriceDisplayRow({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    const aBeeZeeFont = TextStyle(
      fontFamily: FontFamily.aBeeZee,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    );
    const actorFont = TextStyle(
      fontFamily: FontFamily.actor,
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppColors.cartScreenPrimary,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: aBeeZeeFont),
        Text('Rs $value', style: actorFont),
      ],
    );
  }
}
