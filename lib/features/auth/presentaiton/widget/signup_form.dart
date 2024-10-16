import 'package:baked_bliss/features/auth/presentaiton/controller/auth_controller.dart';
import 'package:baked_bliss/features/auth/presentaiton/widget/auth_gradient_button.dart';
import 'package:baked_bliss/features/auth/presentaiton/widget/signup_input_field.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/app_routes.dart';
import 'package:baked_bliss/utils/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class SignUpForm extends HookWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    const montagaFont = TextStyle(
      fontFamily: FontFamily.montaga,
      fontWeight: FontWeight.w400,
      fontSize: 20,
    );
    final Size size = MediaQuery.of(context).size;

    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final phoneNoController = useTextEditingController();
    final fullNameController = useTextEditingController();
    final formKey = GlobalKey<FormState>();
    final controller = Get.find<AuthController>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(AppConstants.fullName, style: montagaFont),
            const SizedBox(height: 10),
            SignUpInputField(controller: fullNameController),
            const SizedBox(height: 30),
            const Text(AppConstants.email, style: montagaFont),
            const SizedBox(height: 10),
            SignUpInputField(
              controller: emailController,
              validator: AppHelper.emailValidator,
            ),
            const SizedBox(height: 30),
            const Text(AppConstants.password, style: montagaFont),
            const SizedBox(height: 10),
            Obx(
              () => SignUpInputField(
                controller: passwordController,
                validator: AppHelper.passwordValidator,
                obscureText: !controller.showPasswordSignup,
                isPassword: true,
              ),
            ),
            const SizedBox(height: 30),
            const Text(AppConstants.phoneNo, style: montagaFont),
            SignUpInputField(
              controller: phoneNoController,
              validator: AppHelper.phoneValidator,
            ),
            const SizedBox(height: 50),
            AuthGradientButton(
              onPressed: () {
                if (!formKey.currentState!.validate()) return;
                controller.emailSignup(
                  emailController.text,
                  passwordController.text,
                  fullNameController.text,
                  phoneNoController.text,
                );
              },
              title: AppConstants.signup,
            ),
            const SizedBox(height: 30),
            AuthGradientButton(
              onPressed: () {
                Get.offAll(AppRoutes.navigation);
              },
              title: AppConstants.joinAsGuest,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
