import 'package:baked_bliss/common/widgets/bottom_navigation.dart';
import 'package:baked_bliss/features/cart/presentation/screens/cart_screen.dart';
import 'package:baked_bliss/features/home/presentation/screens/home_screen.dart';
import 'package:baked_bliss/features/offers&promo/presentation/screens/my_offers_screen.dart';
import 'package:baked_bliss/features/orders/presentation/screens/all_order_screen.dart';
import 'package:baked_bliss/features/orders/presentation/screens/orders_tracking_screen.dart';
import 'package:baked_bliss/features/personalization/presentation/screens/contact_us_screen.dart';
import 'package:baked_bliss/features/personalization/presentation/screens/main_menu_screen.dart';
import 'package:baked_bliss/features/personalization/presentation/screens/profile_screen.dart';
import 'package:baked_bliss/features/product_detail/presentation/screens/product_detail_screen.dart';
import 'package:baked_bliss/features/review/presentation/screens/review_screen.dart';
import 'package:baked_bliss/features/shared/presentation/controller/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NavigationController>();
    return Scaffold(
        body: Obx(
          () => IndexedStack(
            index: controller.currentIndex,
            children: const [
              ContactUsScreen(),
              ProductDetailScreen(),
              CartScreen(),
              OrderTrackingScreen(),
              ProfileScreen(),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigation());
  }
}
