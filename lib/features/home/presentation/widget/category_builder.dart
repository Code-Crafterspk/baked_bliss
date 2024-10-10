import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/common/model/category/category_model.dart';
import 'package:baked_bliss/features/home/presentation/widget/category_card.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    const playfairDisplayFont = TextStyle(
      fontFamily: FontFamily.playfairDisplay,
      fontSize: 18,
      fontWeight: FontWeight.w900,
    );
    final categoryList = [
      const CategoryModel(id: 1, name: 'Cakes', image: AssetsImages.cake),
      const CategoryModel(id: 2, name: 'Pizza', image: AssetsImages.pizza),
      const CategoryModel(id: 3, name: 'Drinks', image: AssetsImages.drink),
      const CategoryModel(id: 4, name: 'Chicken', image: AssetsImages.chicken),
    ];
    return SizedBox(
      height: 105,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Category Builder',
            style: playfairDisplayFont,
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CategoryCard(
                    category: categoryList[index],
                    active: index == 0,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
