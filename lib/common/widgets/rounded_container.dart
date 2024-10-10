import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.child,
    this.borderRadius,
    this.width,
    this.height,
    this.color,
    this.padding,
    this.margin,
    this.constraints,
    this.onTap,
    this.alignment = Alignment.center,
    this.showBorder = false,
    this.borderColor,
  });
  final Widget? child;
  final double? borderRadius;
  final double? width;
  final double? height;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxConstraints? constraints;
  final Alignment alignment;
  final Function()? onTap;
  final bool showBorder;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: alignment,
        height: height,
        width: width,
        margin: margin,
        padding: padding,
        constraints: constraints,
        decoration: BoxDecoration(
          border: showBorder
              ? Border.all(
                  color: borderColor ?? AppColors.grey,
                  width: 1,
                )
              : null,
          color: color ?? AppColors.roundedContainerBg,
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),
        child: child,
      ),
    );
  }
}
