import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class OrderProductDetails extends StatelessWidget {
  const OrderProductDetails({super.key});

  // final OrderProduct product;

  @override
  Widget build(BuildContext context) {
    const orangeColor = AppColors.trackOrderScreen;
    const interFont = TextStyle(
      fontFamily: FontFamily.inter,
      color: AppColors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );
    return RoundedContainer(
      borderRadius: 0,
      color: orangeColor,
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(AssetsImages.vegetableSalad),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Pizza', style: interFont),
              Text(
                '1X',
                style: interFont.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Text(
            'Rs 200',
            style: interFont.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
