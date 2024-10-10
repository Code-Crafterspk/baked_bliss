import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/common/model/ingredient/ingredient_model.dart';
import 'package:baked_bliss/features/product_detail/presentation/widget/ingredient_card.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class IngredientBuilder extends StatelessWidget {
  const IngredientBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    const playfairDisplay = TextStyle(
      fontFamily: FontFamily.playfairDisplay,
      fontSize: 18,
      fontWeight: FontWeight.w900,
    );
    const ingredients = [
      IngredientModel(
        id: 1,
        name: 'Butter',
        image: AssetsImages.butter,
        quantity: '200g',
      ),
      IngredientModel(
        id: 2,
        name: 'Powder',
        image: AssetsImages.powder,
        quantity: '200g',
      ),
      IngredientModel(
        id: 3,
        name: 'Flour',
        image: AssetsImages.flour,
        quantity: '200g',
      ),
      IngredientModel(
        id: 4,
        name: 'Egg',
        image: AssetsImages.egg,
        quantity: '200g',
      ),
      IngredientModel(
        id: 5,
        name: 'Sugar',
        image: AssetsImages.sugar,
        quantity: '200g',
      ),
    ];
    return SizedBox(
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Ingredients', style: playfairDisplay),
          const SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              itemCount: ingredients.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: IngredientCard(ingredient: ingredients[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
