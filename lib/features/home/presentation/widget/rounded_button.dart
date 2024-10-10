import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, required this.icon, required this.onPressed});
  final String icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      hoverElevation: 0,
      height: 55,
      highlightElevation: 0,
      elevation: 0,
      minWidth: 55,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      color: AppColors.roundedButtonBg,
      child: Image.asset(icon, height: 25, width: 25),
    );
  }
}
