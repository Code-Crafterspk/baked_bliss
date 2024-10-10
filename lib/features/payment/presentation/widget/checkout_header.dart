// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/features/payment/presentation/widget/custom_tabbar.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

import 'package:baked_bliss/common/widgets/custom_back_button.dart';

class CheckoutHeader extends StatelessWidget {
  const CheckoutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    const greenColor = AppColors.checkOutScreenPrimary;
    const aBeeZee = TextStyle(
      fontFamily: FontFamily.aBeeZee,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    );
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 290,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 255,
              width: double.infinity,
              child: Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                color: AppColors.white,
                elevation: 5,
              ),
            ),
          ),
          const Positioned(
            top: 10,
            left: 10,
            child: CustomBackButton(color: greenColor),
          ),
          const Positioned(
            bottom: 0,
            left: 20,
            right: 20,
            child: CustomTabBar(
              tabs: [
                CustomTab(icon: AssetsIcons.wallet, title: 'Credit Card'),
                CustomTab(icon: AssetsIcons.apple, title: 'Apple Pay'),
              ],
              selectedIndex: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Checkout 💳',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Rs 2700',
                      style: aBeeZee.copyWith(
                        fontSize: 20,
                        color: greenColor,
                      ),
                    ),
                    Text(
                      'Including GST (8%)',
                      style: aBeeZee.copyWith(
                        fontSize: 12,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
