import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/common/widgets/rounded_shimmer_container.dart';
import 'package:baked_bliss/features/auth/presentaiton/controller/auth_controller.dart';
import 'package:baked_bliss/features/personalization/presentation/widget/main_menu_tile.dart';
import 'package:baked_bliss/features/personalization/presentation/widget/profile_image.dart';
import 'package:baked_bliss/features/shared/presentation/controller/user_controller.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/app_routes.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuItem {
  const MenuItem(
    this.onTap, {
    required this.title,
    required this.icon,
  });
  final String title;
  final String icon;
  final VoidCallback? onTap;
}

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const interFont = TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 15,
        fontWeight: FontWeight.w700);
    final List<MenuItem> menuItems = [
      MenuItem(() {
        Get.toNamed(AppRoutes.myOffers);
      }, title: AppConstants.offers, icon: AssetsIcons.info),
      MenuItem(() {
        Get.toNamed(AppRoutes.contactUs);
      }, title: AppConstants.contactUs, icon: AssetsIcons.contact),
      MenuItem(() {
        Get.toNamed(AppRoutes.myReviews);
      }, title: AppConstants.feedback, icon: AssetsIcons.feedback),
      MenuItem(() {
        Get.toNamed(AppRoutes.myOrders);
      }, title: AppConstants.order, icon: AssetsIcons.order),
      MenuItem(() async {
        final controller = Get.find<AuthController>();
        await controller.signOut();
      }, title: AppConstants.logOut, icon: AssetsIcons.logout),
    ];
    final userController = Get.find<UserController>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppColors.lightGrey,
                ),
              ),
              child: Row(
                children: [
                  const ProfileImage(height: 50, width: 50),
                  Obx(
                    () => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (userController.user?.value != null)
                          Text(
                            userController.user!.value!.fullName,
                            style: interFont,
                          )
                        else
                          const RoundedShimmerContainer(
                            height: 20,
                            width: 100,
                            borderRadius: 10,
                          ),
                        if (userController.user?.value != null &&
                            userController.user!.value!.email != null)
                          Text(
                            userController.user!.value!.email!,
                            style: interFont.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColors.grey,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) =>
                      MainMenuTile(menuItems[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
