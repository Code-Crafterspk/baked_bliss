import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/common/widgets/primary_filled_button.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllOrderScreen extends StatelessWidget {
  const AllOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const aBeeZeeFont = TextStyle(
      fontFamily: FontFamily.aBeeZee,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    );
    const poppinFont = TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: 17,
      fontWeight: FontWeight.w400,
    );
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        backgroundColor: AppColors.white,
        title: const Text(
          AppConstants.order,
          style: aBeeZeeFont,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsIcons.productCart,
                  height: 130,
                  width: 130,
                ),
                const SizedBox(height: 20),
                Text(
                  AppConstants.noOrdersYet,
                  style: poppinFont.copyWith(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  AppConstants.noOrdersMessage,
                  style: TextStyle(
                    fontFamily: FontFamily.montserrat,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: PrimaryFilledButton(
              borderRadius: 30,
              onPressed: () {},
              title: AppConstants.startOrdering,
              backgroundColor: AppColors.startOrderingButtonColor,
            ),
          ),
        ],
      ),
    );
  }
}
