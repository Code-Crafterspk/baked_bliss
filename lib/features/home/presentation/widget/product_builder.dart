import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:baked_bliss/features/home/presentation/widget/product_card.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class ProductBuilder extends StatelessWidget {
  const ProductBuilder(
      {super.key, required this.productList, required this.title});
  final List<ProductModel> productList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.catlogTitleColor),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ProductCard(
                      product: productList[index],
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
