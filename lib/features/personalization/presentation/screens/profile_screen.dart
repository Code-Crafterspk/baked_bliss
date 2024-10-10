import 'package:baked_bliss/features/personalization/presentation/widget/account_section.dart';
import 'package:baked_bliss/features/personalization/presentation/widget/profile_background.dart';
import 'package:baked_bliss/features/personalization/presentation/widget/profile_image.dart';
import 'package:baked_bliss/features/shared/presentation/controller/user_controller.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const interFont = TextStyle(
      fontFamily: FontFamily.inter,
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: Colors.white,
    );
    final controller = Get.find<UserController>();
    return const Scaffold(
      backgroundColor: AppColors.profileScreenScaffoldBg,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          ProfileBackground(),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 70),
                ProfileImage(
                  height: 95,
                  width: 95,
                ),
                SizedBox(height: 10),
                // Obx(
                //   () => Text(
                //     controller.user?.value?.fullName ?? '',
                //     style: interFont,
                //   ),
                // ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: AccountSection()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
