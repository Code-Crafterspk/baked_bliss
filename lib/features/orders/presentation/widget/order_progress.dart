import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class OrderProgress extends StatelessWidget {
  const OrderProgress({super.key});

  @override
  Widget build(BuildContext context) {
    const orangeColor = AppColors.trackOrderScreen;
    const greyColor = AppColors.grey;
    const interFont = TextStyle(
      color: AppColors.black,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );
    final Map<String, String> orderStatus = {
      'Order picking': 'Estimated time: 3 mins',
      'On The Way': 'Estimated time: 10 mins',
      'Delivered': 'Address, House, Street etc',
    };

    var column = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final status in orderStatus.entries)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RoundedContainer(
                    color: orangeColor,
                    height: 40,
                    width: 40,
                    borderRadius: 10,
                    child: Image.asset(AssetsIcons.scooter)),
                const SizedBox(width: 20),
                Column(
                  children: [
                    Text(status.key, style: interFont),
                    Text(
                      status.value,
                      style: interFont.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: greyColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
      ],
    );
    return Stack(
      alignment: Alignment.center,
      children: [
        const Positioned(
          bottom: 20,
          left: 20,
          top: 20,
          child: DottedLine(
            dashColor: orangeColor,
            dashRadius: 5,
            lineThickness: 2,
            dashGapLength: 2,
            direction: Axis.vertical,
          ),
        ),
        column,
      ],
    );
  }
}
