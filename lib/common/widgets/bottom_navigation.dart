import 'dart:ui';

import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/features/shared/domain/model/navigation_model.dart';
import 'package:baked_bliss/features/shared/presentation/controller/navigation_controller.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const listNavigation = [
      NavigationModel(title: 'Home', icon: AssetsIcons.navigation1),
      NavigationModel(title: 'Favourite', icon: AssetsIcons.navigation2),
      NavigationModel(title: 'Cart', icon: AssetsIcons.navigation3),
      NavigationModel(title: 'Notification', icon: AssetsIcons.navigation4),
      NavigationModel(title: 'Profile', icon: AssetsIcons.navigation5),
    ];
    final controller = Get.find<NavigationController>();
    const bottomNavigationHeight = 70.0;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Divider(
          height: 5,
          thickness: 3,
          color: AppColors.black.withOpacity(0.5),
        ),
        Positioned(
          bottom: 0.3,
          width: size.width,
          child: const Divider(
            height: 1,
            thickness: 1,
            color: AppColors.black,
          ),
        ),
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: SizedBox(
              width: size.width,
              height: bottomNavigationHeight,
            ),
          ),
        ),
        Positioned.fill(
          top: 5,
          child: Obx(
            () => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              backgroundColor: AppColors.transparent,
              currentIndex: controller.currentIndex,
              onTap: (value) {
                controller.changeIndex(value);
              },
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                for (int i = 0; i < listNavigation.length; i++)
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      height: 30,
                      width: 30,
                      listNavigation[i].icon,
                      color: controller.currentIndex == i
                          ? AppColors.navigationActive
                          : AppColors.navigationInactive,
                    ),
                    label: listNavigation[i].title,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
