import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class DeliveryPersonDetails extends StatelessWidget {
  const DeliveryPersonDetails({super.key});

  @override
  Widget build(BuildContext context) {
    const orangeColor = AppColors.trackOrderScreen;
    const interFont = TextStyle(
      fontFamily: FontFamily.inter,
      color: AppColors.white,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
    return RoundedContainer(
      borderRadius: 20,
      color: orangeColor,
      height: 65,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(AssetsIcons.deliveryBoy,
                width: 50, height: 50, fit: BoxFit.cover),
          ),
          const SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ahsan', style: interFont),
              const SizedBox(height: 5),
              Text(
                'Delivery boy',
                style: interFont.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Image.asset(AssetsIcons.call),
          ),
        ],
      ),
    );
  }
}
