import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.onPressed, required this.title});
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    const instrumentSansFont = TextStyle(
      fontFamily: FontFamily.instrumentSans,
      fontWeight: FontWeight.w700,
      color: Colors.black,
      fontSize: 20,
    );

    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.authButtonBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(27),
        ),
        minimumSize: const Size(double.infinity, 54),
      ),
      child: Text(title, style: instrumentSansFont),
    );
  }
}
