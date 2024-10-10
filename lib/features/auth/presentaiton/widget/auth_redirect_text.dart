import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthRedirectText extends StatelessWidget {
  const AuthRedirectText(
      {super.key, required this.text1, required this.text2, this.onTap});
  final String text1;
  final String text2;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    const interFont = TextStyle(
        fontFamily: FontFamily.inter,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: Colors.black);
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: interFont,
          ),
          TextSpan(
            text: text2,
            recognizer: TapGestureRecognizer()..onTap = onTap,
            style: interFont.copyWith(
              color: AppColors.authRedirectText,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
