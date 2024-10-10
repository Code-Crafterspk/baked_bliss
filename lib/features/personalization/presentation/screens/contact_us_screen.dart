import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/features/personalization/presentation/widget/contact_information.dart';
import 'package:baked_bliss/features/personalization/presentation/widget/social_button.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:baked_bliss/utils/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const aBeeZeeFont = TextStyle(
      fontFamily: FontFamily.aBeeZee,
      fontWeight: FontWeight.w400,
      fontSize: 18,
    );
    const montserratFont = TextStyle(
      fontFamily: FontFamily.montserrat,
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: AppColors.grey,
    );
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.white,
        backgroundColor: AppColors.white,
        title: const Text(AppConstants.contactUs, style: aBeeZeeFont),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      AppConstants.fullName,
                      style: montserratFont,
                    ),
                    const TextField(),
                    const SizedBox(height: 20),
                    const Text(
                      AppConstants.email,
                      style: montserratFont,
                    ),
                    TextFormField(
                      validator: AppHelper.emailValidator,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      AppConstants.message,
                      style: montserratFont,
                    ),
                    const TextField(),
                  ],
                ),
              ),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                minimumSize: Size(size.width * 0.6, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: Text(
                AppConstants.contactUs,
                style: montserratFont.copyWith(
                  color: AppColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 40),
            const ContactInformation(),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialButton(
                  icon: AssetsIcons.facebookNegative,
                  onPressed: () {},
                ),
                SocialButton(
                  icon: AssetsIcons.instagramNegative,
                  onPressed: () {},
                ),
                SocialButton(
                  icon: AssetsIcons.google,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
