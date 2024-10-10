import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/features/personalization/presentation/widget/recent_order_card.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/app_routes.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:baked_bliss/utils/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecentOrderSection extends StatelessWidget {
  const RecentOrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    const borderColor = Color.fromRGBO(224, 232, 242, 0.6);
    const aBeeZeeFont = TextStyle(
      fontFamily: FontFamily.aBeeZee,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: AppColors.lightBlack,
    );
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  AppConstants.recentOrder,
                  style: aBeeZeeFont,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    side: const BorderSide(color: borderColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(AppRoutes.myOrders);
                  },
                  child: const Text(
                    AppConstants.viewAll,
                    style: aBeeZeeFont,
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: borderColor, thickness: 1),
          ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 5, right: 5),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return const RecentOrderCard(
                title: 'Chocolate Cake',
                image: AssetsImages.bread,
                price: '₹ 500',
                date: '12th June 2021',
                time: '  10:30 AM',
                quantity: 1,
                status: OrderStatus.confirmed,
              );
            },
          ),
        ],
      ),
    );
  }
}
