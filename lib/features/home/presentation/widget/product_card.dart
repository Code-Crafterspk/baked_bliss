import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/utils/constant/app_routes.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.productDetail, arguments: product);
      },
      child: Stack(
        children: [
          RoundedContainer(
              height: 181,
              width: 142,
              borderRadius: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(product.thumbnail, height: 100, width: 100),
                  const SizedBox(height: 10),
                  Text(product.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      )),
                  const SizedBox(height: 5),
                  Text('\$${product.price}',
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 14,
                      )),
                ],
              )),
          Positioned(
            top: 3,
            right: 3,
            child: Card(
              color: AppColors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.star, color: AppColors.ratingBg, size: 15),
                    Text(
                      '${product.rating}',
                      style: const TextStyle(
                          color: AppColors.ratingText, fontSize: 11),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
