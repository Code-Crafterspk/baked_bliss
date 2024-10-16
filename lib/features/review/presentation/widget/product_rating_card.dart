import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductRatingCard extends StatelessWidget {
  const ProductRatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final ratingScore = [0, 60, 29, 38, 50];
    final screenSize = MediaQuery.of(context).size;
    return RoundedContainer(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              for (int i = ratingScore.length; i > 0; i--)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      Text('$i'),
                      const SizedBox(width: 3),
                      const Icon(
                        Icons.star,
                        size: 15,
                        color: AppColors.ratingBg,
                      ),
                      const SizedBox(width: 3),
                      RoundedContainer(
                        height: 6,
                        alignment: Alignment.topLeft,
                        borderRadius: 4,
                        width: screenSize.width * 0.4,
                        color: AppColors.ratingLineBg.withOpacity(0.4),
                        child: RoundedContainer(
                          height: 6,
                          borderRadius: 4,
                          width: screenSize.width *
                              0.4 *
                              (ratingScore[i - 1] /
                                  ratingScore.reduce(
                                      (previous, next) => previous + next)),
                          color: AppColors.ratingLineBg,
                        ),
                      ),
                    ],
                  ),
                )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                '4.0',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                ),
              ),
              RatingBar.builder(
                  initialRating: 4,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 15,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                  itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: AppColors.ratingBg,
                      ),
                  onRatingUpdate: (rating) {}),
              const SizedBox(height: 5),
              const Text(
                '52 Reviews',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
