import 'package:baked_bliss/assets/icons.dart';
import 'package:flutter/material.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AssetsIcons.bliss),
      ),
    );
  }
}
