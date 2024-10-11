import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/features/auth/presentaiton/controller/auth_controller.dart';
import 'package:baked_bliss/utils/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final controller = Get.find<AuthController>();
      Future.delayed(const Duration(seconds: 2), () {
        controller.userAuthenticated().then(
          (_) async {
            Get.offAllNamed(
              controller.isAuthenticated
                  ? AppRoutes.navigation
                  : AppRoutes.welcome,
            );
          },
        );
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsImages.splashBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Hero(
          tag: AssetsIcons.bakedBliss,
          child: Image.asset(AssetsIcons.bakedBliss),
        ),
      ),
    );
  }
}
