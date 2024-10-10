import 'package:baked_bliss/common/widgets/custom_back_button.dart';
import 'package:baked_bliss/common/widgets/primary_filled_button.dart';
import 'package:baked_bliss/features/cart/presentation/controller/cart_controller.dart';
import 'package:baked_bliss/features/cart/presentation/widget/cart_card.dart';
import 'package:baked_bliss/features/cart/presentation/widget/price_display_row.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/app_routes.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CartController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBackButton(color: AppColors.cartScreenPrimary),
                  Text(
                    'Your Cart 👍🏻',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.cartProduct.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Obx(
                        () => CartCard(
                          cartProduct: controller.cartProduct[index.clamp(
                            0,
                            controller.cartProduct.length - 1,
                          )],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () {
                  if (controller.cartProduct.isNotEmpty) {
                    return const Column(
                      children: [
                        PriceDisplayRow(
                          title: 'Sub Total',
                          value: '2600',
                        ),
                        PriceDisplayRow(
                          title: 'GST',
                          value: '100',
                        ),
                        PriceDisplayRow(
                          title: 'Total',
                          value: '0',
                        ),
                        SizedBox(height: 40),
                      ],
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              PrimaryFilledButton(
                title: AppConstants.proceedToCheckout,
                onPressed: () {
                  Get.toNamed(AppRoutes.checkout);
                },
                backgroundColor: AppColors.cartScreenPrimary,
              ),
              const SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}
