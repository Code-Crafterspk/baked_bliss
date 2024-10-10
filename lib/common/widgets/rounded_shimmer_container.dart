import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class RoundedShimmerContainer extends StatelessWidget {
  const RoundedShimmerContainer({
    super.key,
    this.child,
    this.borderRadius,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.constraints,
    this.alignment = Alignment.center,
  });

  final Widget? child;
  final double? borderRadius;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxConstraints? constraints;
  final Alignment alignment;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: AppColors.shimmerBaseColor,
        highlightColor: AppColors.shimmerHighlightColor,
        child: Container(
          alignment: alignment,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
          ),
          constraints: constraints,
          height: height,
          margin: margin,
          padding: padding,
          width: width,
          child: child,
        ));
  }
}
