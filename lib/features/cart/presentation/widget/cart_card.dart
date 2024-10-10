import 'package:baked_bliss/common/model/cart/cart_product_model.dart';
import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/features/cart/presentation/widget/add_remove_item.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key, required this.cartProduct});
  final CartProductModel cartProduct;

  @override
  Widget build(BuildContext context) {
    const aBeeZeeFont = TextStyle(
      fontFamily: FontFamily.aBeeZee,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
    const actorFont = TextStyle(
      fontFamily: FontFamily.actor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(240, 143, 95, 1),
    );

    final product = cartProduct.product;
    return RoundedContainer(
      height: 85,
      borderRadius: 16,
      color: AppColors.cartProductCardBg,
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            product.thumbnail,
            height: 65,
            width: 65,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (product.category != null)
                Text(
                  product.category!.name,
                  style: aBeeZeeFont.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(177, 177, 177, 1),
                  ),
                ),
              Text(product.title,
                  style: actorFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(73, 73, 73, 1),
                  )),
              const SizedBox(height: 5),
              Text(
                cartProduct.totalPrice.toString(),
                style: actorFont,
              ),
            ],
          ),
          const Spacer(),
          AddRemoveItem(cartProduct: cartProduct),
        ],
      ),
    );
  }
}
