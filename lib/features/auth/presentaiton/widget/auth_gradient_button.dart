import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({
    super.key,
    required this.onPressed,
    required this.title,
  });
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    const montserratFont = TextStyle(
      fontFamily: FontFamily.montserrat,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    );
    return InkWell(
      radius: 0,
      borderRadius: BorderRadius.circular(25),
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            const BoxShadow(
              color: AppColors.black,
              blurRadius: 42,
              spreadRadius: 0,
              blurStyle: BlurStyle.outer,
            ),
            BoxShadow(
              color: AppColors.black.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 0,
              blurStyle: BlurStyle.solid,
            ),
            BoxShadow(
              color: AppColors.black.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: -40,
            ),
            BoxShadow(
              color: AppColors.black.withOpacity(0.27),
              blurRadius: 10,
              spreadRadius: -10,
            )
          ],
        ),
        height: 60,
        child: Text(
          title,
          style: montserratFont.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
