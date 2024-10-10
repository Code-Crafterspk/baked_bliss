import 'dart:math';

import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/common/widgets/rounded_shimmer_container.dart';
import 'package:baked_bliss/features/shared/presentation/controller/user_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, required this.height, required this.width});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UserController>();
    return Card(
      elevation: 10,
      shape: const CircleBorder(),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(100),
        ),
        child: Obx(
          () {
            if (controller.isLoadingUser.value ||
                controller.isLoadingImage.value) {
              return RoundedShimmerContainer(
                height: height,
                width: width,
                borderRadius: max(height, width) / 2,
              );
            }
            if (controller.user?.value?.imageUrl == null) {
              return Image.asset(
                AssetsImages.profile,
                height: height,
                width: width,
              );
            }
            return CachedNetworkImage(
              imageUrl: controller.user!.value!.imageUrl!,
              height: height,
              width: width,
            );
          },
        ),
      ),
    );
  }
}
