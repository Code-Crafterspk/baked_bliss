import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class PrimaryElevatedButton extends StatelessWidget {
  const PrimaryElevatedButton._({
    this.onPressed,
    required this.color,
    required this.child,
    this.borderRadius,
    this.height,
    this.width,
  });

  final VoidCallback? onPressed;
  final Color color;
  final Widget child;
  final double? borderRadius;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
        // color: color,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 30,
            offset: const Offset(0, 20),
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(borderRadius ?? 20),
          child: child,
        ),
      ),
    );
  }

  factory PrimaryElevatedButton({
    required VoidCallback onPressed,
    required String title,
    required Color color,
    final FontStyle fontStyle = FontStyle.normal,
    final double? borderRadius,
    final double? height,
    final double? width,
  }) {
    final aBeeZeeFont = TextStyle(
      fontFamily: FontFamily.aBeeZee,
      fontSize: 18,
      fontStyle: fontStyle,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    );

    return PrimaryElevatedButton._(
      onPressed: onPressed,
      color: color,
      borderRadius: borderRadius,
      height: height,
      width: width,
      child: Center(child: Text(title, style: aBeeZeeFont)),
    );
  }

  factory PrimaryElevatedButton.icon({
    VoidCallback? onPressed,
    required String title,
    required Color color,
    required Widget icon,
    final FontStyle fontStyle = FontStyle.normal,
    final double? borderRadius,
    final Color? textColor,
    final double? height,
    final double? width,
  }) {
    final aBeeZeeFont = TextStyle(
      fontFamily: FontFamily.aBeeZee,
      fontSize: 18,
      fontStyle: fontStyle,
      color: textColor ?? Colors.white,
      fontWeight: FontWeight.w400,
    );

    return PrimaryElevatedButton._(
      onPressed: onPressed,
      borderRadius: borderRadius,
      color: color,
      height: height,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(width: 10),
          Text(title, style: aBeeZeeFont),
        ],
      ),
    );
  }
}
