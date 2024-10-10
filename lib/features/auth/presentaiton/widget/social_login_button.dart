import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        onTap: onPressed,
        child: Image.asset(
          icon,
          width: 25,
          height: 25,
        ),
      ),
    );
  }
}
