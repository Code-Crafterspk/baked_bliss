import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/common/widgets/custom_back_button.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class ProductImageView extends StatelessWidget {
  const ProductImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 430,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.productImgGradient1,
                    AppColors.productImgGradient2,
                    AppColors.productImgGradient3,
                    AppColors.productImgGradient4,
                  ],
                ),
              ),
            ),
          ),
          Image.asset(
            AssetsImages.productImage1,
            height: 300,
            width: 300,
          ),
          Positioned(
            bottom: -10,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final image = AssetsImages.productImage1.split('/')
                    ..removeLast()
                    ..add('product_image${index + 2}.png');
                  return Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        image.join('/'),
                        height: 130,
                        width: 100,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const Positioned(
            top: 20,
            left: 20,
            child: CustomBackButton(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
