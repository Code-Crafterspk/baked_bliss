import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    const montserrat = TextStyle(
      fontFamily: FontFamily.montserrat,
      fontWeight: FontWeight.w700,
      fontSize: 36,
      color: AppColors.white,
    );
    return GestureDetector(
      child: RoundedContainer(
        color: AppColors.offerCardBg,
        borderRadius: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                AssetsImages.powerBowl,
                width: 110,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('50% OFF', style: montserrat),
                Text('All Salad and Pasta',
                    style: montserrat.copyWith(
                      fontSize: 14,
                      color: Colors.black,
                    )),
                const SizedBox(height: 5),
                RoundedContainer(
                  alignment: Alignment.center,
                  color: Colors.white,
                  borderRadius: 10,
                  padding: const EdgeInsets.all(10),
                  height: 50,
                  child: Text(
                    'Use code codeCrafter',
                    style: montserrat.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
