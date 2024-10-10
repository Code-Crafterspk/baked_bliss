import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/features/auth/presentaiton/widget/auth_button.dart';
import 'package:baked_bliss/features/auth/presentaiton/widget/social_login.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const josefinSansFont = TextStyle(
        fontFamily: FontFamily.josefinSans,
        fontWeight: FontWeight.w400,
        fontSize: 36,
        letterSpacing: -2);
    const instrumentSerifFont = TextStyle(
      fontFamily: FontFamily.instrumentSerif,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );
    const interFont = TextStyle(
      fontFamily: FontFamily.inter,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    );
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: AssetsIcons.bakedBliss,
                child: Image.asset(AssetsIcons.bakedBliss),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  AppConstants.welcomeToBakedBliss,
                  textAlign: TextAlign.center,
                  style: josefinSansFont,
                ),
              ),
              const Text(
                AppConstants.welcomeToBakedBlissTrats,
                style: instrumentSerifFont,
              ),
              const SizedBox(height: 60),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Column(
                  children: [
                    AuthButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.login);
                        },
                        title: AppConstants.login),
                    const SizedBox(height: 20),
                    AuthButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.signUp);
                        },
                        title: AppConstants.signUp),
                    const SizedBox(height: 40),
                    AuthButton(
                        onPressed: () {
                          Get.offAllNamed(AppRoutes.navigation);
                        },
                        title: AppConstants.joinAsGuest),
                    const SizedBox(height: 40),
                    const Text(
                      AppConstants.orViaSocialMedia,
                      style: interFont,
                    ),
                    const SizedBox(height: 10),
                    const SocialLogin(),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
