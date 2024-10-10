import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/features/auth/presentaiton/widget/auth_background.dart';
import 'package:baked_bliss/features/auth/presentaiton/widget/auth_redirect_text.dart';
import 'package:baked_bliss/features/auth/presentaiton/widget/login_form.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/app_routes.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const montserratFont = TextStyle(
      fontFamily: FontFamily.montserrat,
      fontWeight: FontWeight.w900,
      fontSize: 25,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppConstants.logIn,
          style: montserratFont,
        ),
        centerTitle: true,
        backgroundColor: AppColors.transparent,
        surfaceTintColor: AppColors.transparent,
      ),
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset(AssetsImages.bread),
              const SizedBox(height: 20),
              const LoginForm(),
              const SizedBox(height: 30),
              AuthRedirectText(
                text1: AppConstants.donTHaveAnAccount,
                text2: AppConstants.signUp,
                onTap: () {
                  Get.offNamed(AppRoutes.signUp);
                },
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
