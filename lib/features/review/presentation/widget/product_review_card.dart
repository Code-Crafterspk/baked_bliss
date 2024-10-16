import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductReviewCard extends StatelessWidget {
  const ProductReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                AssetsImages.profile,
                height: 40,
                width: 40,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Angela',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RatingBar.builder(
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: AppColors.ratingBg,
                      ),
                      onRatingUpdate: (rating) {},
                      maxRating: 5,
                      minRating: 1,
                      allowHalfRating: true,
                      itemCount: 5,
                      initialRating: 3,
                      itemSize: 15,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '2024 Aug 24',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              position: PopupMenuPosition.under,
              itemBuilder: (context) => <PopupMenuEntry>[
                PopupMenuItem(
                  enabled: true,
                  onTap: () {},
                  child: const Text('Report inappropriate'),
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 10),
        const Text(
            'I ordered the Kabuli Palow, and it was absolutely amazing! The rice was perfectly cooked and fragrant, and the tender lamb was full of flavor'),
      ],
    );
  }
}
