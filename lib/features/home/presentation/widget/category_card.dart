import 'package:baked_bliss/common/model/category/category_model.dart';
import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
    this.active = false,
  });
  final CategoryModel category;
  final bool active;

  @override
  Widget build(BuildContext context) {
    const playfairDisplay = TextStyle(
      fontFamily: FontFamily.playfairDisplay,
      fontSize: 13.5,
      fontWeight: FontWeight.w900,
    );

    return RoundedContainer(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      color: AppColors.categoryCardBg,
      borderRadius: 19,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          RoundedContainer(
            height: 30,
            width: 30,
            child: Image.asset(
              category.image,
              height: 22,
              width: 22,
            ),
          ),
          const SizedBox(width: 10),
          Text(category.name, style: playfairDisplay),
        ],
      ),
    );
  }
}
