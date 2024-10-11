import 'package:baked_bliss/features/auth/presentaiton/bindings/auth_binding.dart';
import 'package:baked_bliss/features/auth/presentaiton/screen/login_screen.dart';
import 'package:baked_bliss/features/auth/presentaiton/screen/signup_screen.dart';
import 'package:baked_bliss/features/auth/presentaiton/screen/welcome_screen.dart';
import 'package:baked_bliss/features/cart/presentation/bindings/cart_bindings.dart';
import 'package:baked_bliss/features/cart/presentation/screens/cart_screen.dart';
import 'package:baked_bliss/features/home/presentation/screens/home_screen.dart';
import 'package:baked_bliss/features/orders/presentation/screens/orders_tracking_screen.dart';
import 'package:baked_bliss/features/payment/presentation/screens/check_out_screen.dart';
import 'package:baked_bliss/features/payment/presentation/screens/payment_success_screen.dart';
import 'package:baked_bliss/features/personalization/presentation/screens/profile_screen.dart';
import 'package:baked_bliss/features/personalization/presentation/screens/update_profile_screen.dart';
import 'package:baked_bliss/features/product_detail/presentation/screens/product_detail_screen.dart';
import 'package:baked_bliss/features/search/presentation/screens/search_screen.dart';
import 'package:baked_bliss/features/shared/presentation/binding/navigation_binding.dart';
import 'package:baked_bliss/features/shared/presentation/binding/user_binding.dart';
import 'package:baked_bliss/features/shared/presentation/screens/navigation_menu.dart';
import 'package:baked_bliss/features/splash/presentation/screens/splash_screen.dart';
import 'package:baked_bliss/utils/constant/app_routes.dart';
import 'package:get/get.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class Routing {
  static var getPages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.welcome,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => const SignupScreen(),
    ),
    GetPage(
      name: AppRoutes.navigation,
      page: () => const NavigationMenu(),
      bindings: [
        NavigationBinding(),
        UserBinding(),
        // ProductBinding(),
        // CategoryBinding(),
        CartBinding()
        // OrderBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.productDetail,
      page: () => const ProductDetailScreen(),
    ),
    GetPage(
      name: AppRoutes.cart,
      page: () => const CartScreen(),
    ),
    GetPage(
      name: AppRoutes.search,
      page: () => const SearchScreen(),
    ),
    GetPage(
      name: AppRoutes.paymentSuccess,
      page: () => const PaymentSuccessScreen(),
    ),
    GetPage(
      name: AppRoutes.checkout,
      page: () => const CheckOutScreen(),
    ),
    GetPage(
      name: AppRoutes.profileUpdate,
      page: () => const UpdateProfileScreen(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: AppRoutes.orderTracking,
      page: () => const OrderTrackingScreen(),
    ),
  ];
}
