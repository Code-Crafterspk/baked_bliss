import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOffersScreen extends StatelessWidget {
  const MyOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const aBeeZeeFont = TextStyle(
      fontFamily: FontFamily.aBeeZee,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    );

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        backgroundColor: AppColors.white,
        title: const Text(
          AppConstants.myOffers,
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppConstants.noOffersYet,
              style: TextStyle(
                fontFamily: FontFamily.poppins,
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              AppConstants.noOffersMessage,
              style: TextStyle(
                fontFamily: FontFamily.poppins,
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: AppColors.lightBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
