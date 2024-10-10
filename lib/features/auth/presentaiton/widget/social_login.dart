import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/features/auth/presentaiton/controller/auth_controller.dart';
import 'package:baked_bliss/features/auth/presentaiton/widget/social_login_button.dart';
import 'package:flutter/widgets.dart';
import 'package:get/instance_manager.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialLoginButton(
          icon: AssetsIcons.facebook,
          onPressed: () async {
            await controller.facebookLogin();
          },
        ),
        const SizedBox(width: 10),
        SocialLoginButton(
          icon: AssetsIcons.google,
          onPressed: () async {
            await controller.googleLogin();
          },
        ),
        const SizedBox(width: 10),
        SocialLoginButton(
          icon: AssetsIcons.instagram,
          onPressed: () async {
            // controller.instagramLogin();
          },
        ),
      ],
    );
  }
}
