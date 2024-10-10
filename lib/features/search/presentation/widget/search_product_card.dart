import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class SearchProductCard extends StatelessWidget {
  const SearchProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    const dmSansFont = TextStyle(
      fontFamily: FontFamily.dMSans,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
    return RoundedContainer(
      borderRadius: 29,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(29),
            child: AspectRatio(
                aspectRatio: 1.5,
                child: Image.asset(AssetsImages.chickenSalad)),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                const Text(
                  'Curry Salmon',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: dmSansFont,
                ),
                Text(
                  'from Rs 1099',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: dmSansFont.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
                Text(
                  'Medium Curry Salmon in Rs 1099',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: dmSansFont.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
