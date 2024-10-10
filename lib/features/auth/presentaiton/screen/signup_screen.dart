import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/features/auth/presentaiton/widget/auth_redirect_text.dart';
import 'package:baked_bliss/features/auth/presentaiton/widget/signup_form.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/app_routes.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const montserratFont = TextStyle(
      fontFamily: FontFamily.montserrat,
      fontWeight: FontWeight.w900,
      fontSize: 25,
    );

    const jockeyOneFont = TextStyle(
      fontFamily: FontFamily.jockeyOne,
      fontWeight: FontWeight.w400,
      fontSize: 36,
    );

    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppConstants.signup,
          style: montserratFont,
        ),
        centerTitle: true,
        backgroundColor: AppColors.transparent,
        surfaceTintColor: AppColors.transparent,
      ),
      body: Stack(
        children: [
          Image.asset(
            AssetsImages.loginBackground,
            fit: BoxFit.fill,
            width: size.width,
            height: size.height,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Image.asset(AssetsImages.bread),
                const SizedBox(height: 10),
                const Text(
                  AppConstants.createAccount,
                  style: jockeyOneFont,
                ),
                const SizedBox(height: 20),
                const SignUpForm(),
                AuthRedirectText(
                  text1: AppConstants.alreadyHaveAnAccount,
                  text2: AppConstants.logIn,
                  onTap: () => Get.offNamed(AppRoutes.login),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
