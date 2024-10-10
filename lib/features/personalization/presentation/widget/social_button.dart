import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.icon, this.onPressed});

  final String icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      child: Image.asset(
        icon,
        height: 40,
        width: 40,
      ),
    );
  }
}
