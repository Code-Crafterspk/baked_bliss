import 'package:baked_bliss/common/model/ingredient/ingredient_model.dart';
import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class IngredientCard extends StatelessWidget {
  const IngredientCard({super.key, required this.ingredient});
  final IngredientModel ingredient;

  @override
  Widget build(BuildContext context) {
    const aclonicaFont = TextStyle(
      fontFamily: FontFamily.aclonica,
      fontWeight: FontWeight.w400,
      fontSize: 13.5,
    );
    return RoundedContainer(
      height: 80,
      width: 75,
      borderRadius: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ingredient.image, height: 50, width: 50),
          const SizedBox(height: 5),
          Text(ingredient.name,
              style: aclonicaFont,
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
