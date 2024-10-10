import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/common/widgets/primary_filled_button.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFeedBackScreen extends StatelessWidget {
  const MyFeedBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const aBeeZeeFont = TextStyle(
      fontFamily: FontFamily.aBeeZee,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    );
    const poppinFont = TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    );
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        backgroundColor: AppColors.white,
        title: const Text(
          AppConstants.feedback,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsIcons.like,
                  height: 130,
                  width: 130,
                ),
                const SizedBox(height: 20),
                const Text(
                  AppConstants.noReviewsYet,
                  style: poppinFont,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: PrimaryFilledButton(
              onPressed: () {},
              borderRadius: 30,
              title: AppConstants.startOrdering,
              backgroundColor: AppColors.startOrderingButtonColor,
            ),
          ),
        ],
      ),
    );
  }
}
