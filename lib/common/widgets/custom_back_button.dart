import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.onPressed, required this.color});
  final Color color;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: const Color.fromRGBO(248, 248, 251, 1),
      onPressed: onPressed ?? () => Get.back(),
      minWidth: 45,
      height: 45,
      highlightElevation: 0,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        Icons.arrow_back_ios_new,
        color: color,
      ),
    );
  }
}
