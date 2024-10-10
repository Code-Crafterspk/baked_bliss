import 'package:baked_bliss/assets/images.dart';
import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          AssetsImages.loginBackground,
          fit: BoxFit.fill,
          width: size.width,
          height: size.height,
        ),
        child,
      ],
    );
  }
}
