import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ProfileBackground extends StatelessWidget {
  const ProfileBackground({
    super.key,
    this.backgroundColor,
    this.showBackBtn = false,
  });
  final Color? backgroundColor;
  final bool showBackBtn;

  @override
  Widget build(BuildContext context) {
    final color = backgroundColor ?? AppColors.profileScreenBg;
    return Container(
      alignment: Alignment.topLeft,
      height: 295,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)),
        color: color,
      ),
      child: !showBackBtn
          ? null
          : Padding(
              padding: const EdgeInsets.all(15),
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
              ),
            ),
    );
  }
}
