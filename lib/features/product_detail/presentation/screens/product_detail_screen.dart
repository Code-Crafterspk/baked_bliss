import 'package:baked_bliss/common/widgets/primary_elevated_button.dart';
import 'package:baked_bliss/features/product_detail/presentation/widget/ingredient_builder.dart';
import 'package:baked_bliss/features/product_detail/presentation/widget/product_description.dart';
import 'package:baked_bliss/features/product_detail/presentation/widget/product_image_view.dart';
import 'package:baked_bliss/features/product_detail/presentation/widget/product_title_price.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageView(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitlePrice(),
                  SizedBox(height: 20),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 20,
                    runSpacing: 10,
                    children: [
                      // CategoryCard(),
                      // CategoryCard(),
                      // CategoryCard(),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: IngredientBuilder(),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductDescription(),
                  const SizedBox(height: 20),
                  PrimaryElevatedButton(
                    onPressed: () {},
                    title: 'Add to Cart',
                    fontStyle: FontStyle.italic,
                    color: AppColors.addToCartButtonBg,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
