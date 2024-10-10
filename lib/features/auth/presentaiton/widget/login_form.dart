import 'package:baked_bliss/features/auth/presentaiton/controller/auth_controller.dart';
import 'package:baked_bliss/features/auth/presentaiton/widget/auth_gradient_button.dart';
import 'package:baked_bliss/features/auth/presentaiton/widget/login_input_field.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:baked_bliss/utils/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class LoginForm extends HookWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    const montagaFont = TextStyle(
      fontFamily: FontFamily.montaga,
      fontWeight: FontWeight.w400,
      fontSize: 17,
    );
    final size = MediaQuery.of(context).size;
    final formKey = GlobalKey<FormState>();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final controller = Get.find<AuthController>();

    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(AppConstants.emailAddress, style: montagaFont),
            LoginInputField(
              controller: emailController,
              validator: AppHelper.emailValidator,
            ),
            const SizedBox(height: 20),
            const Text(AppConstants.password, style: montagaFont),
            Obx(
              () => LoginInputField(
                controller: passwordController,
                validator: AppHelper.passwordValidator,
                obscureText: controller.showPasswordLogin,
                isPassword: true,
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // context.push(AppRoutes.forgotPassword);
              },
              child: Text(AppConstants.forgotPassword,
                  style: montagaFont.copyWith(
                      fontSize: 14, color: AppColors.forgotPasswordText)),
            ),
            const SizedBox(height: 60),
            AuthGradientButton(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  await controller.emailLogin(
                    emailController.text,
                    passwordController.text,
                  );
                }
              },
              title: AppConstants.logIn,
            ),
          ],
        ),
      ),
    );
  }
}
