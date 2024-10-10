import 'package:baked_bliss/common/model/cart/cart_product_model.dart';
import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class AddRemoveItem extends StatelessWidget {
  const AddRemoveItem({super.key, required this.cartProduct});

  final CartProductModel cartProduct;

  @override
  Widget build(BuildContext context) {
    const actorFont = TextStyle(
      fontFamily: FontFamily.actor,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    );
    return RoundedContainer(
      width: 70,
      height: 25,
      borderRadius: 5,
      color: AppColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.remove,
            size: 15,
            color: AppColors.cartScreenPrimary,
          ),
          Text(cartProduct.quantity.toString(), style: actorFont),
          const Icon(
            Icons.add,
            size: 15,
            color: AppColors.cartScreenPrimary,
          ),
        ],
      ),
    );
  }
}
