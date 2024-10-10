import 'package:flutter/material.dart';

class PrimaryFilledButton extends StatelessWidget {
  const PrimaryFilledButton._({
    this.onPressed,
    required this.backgroundColor,
    required this.child,
    this.width,
    this.height,
    this.borderRadius,
  });

  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Widget child;
  final double? width;
  final double? height;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(width ?? double.infinity, height ?? 62),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 16)),
        ),
      ),
      child: child,
    );
  }

  factory PrimaryFilledButton({
    required String title,
    VoidCallback? onPressed,
    required Color backgroundColor,
    Color? textColor,
    double? width,
    double? height,
    double? borderRadius,
  }) {
    return PrimaryFilledButton._(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      borderRadius: borderRadius,
      width: width,
      height: height,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: textColor ?? Colors.white,
        ),
      ),
    );
  }

  factory PrimaryFilledButton.icon({
    required String title,
    required VoidCallback? onPressed,
    required Color backgroundColor,
    required Widget icon,
    double? width,
    double? height,
    Color? textColor,
    double? borderRadius,
  }) {
    return PrimaryFilledButton._(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      width: width,
      height: height,
      borderRadius: borderRadius,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: textColor ?? Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
