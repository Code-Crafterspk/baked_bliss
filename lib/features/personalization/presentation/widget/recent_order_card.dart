import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/enums/enums.dart';
import 'package:baked_bliss/utils/extension/extension.dart';
import 'package:flutter/material.dart';

class RecentOrderCard extends StatelessWidget {
  const RecentOrderCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.date,
    required this.time,
    required this.quantity,
    this.onPressed,
    required this.status,
  });
  final String title;
  final String image;
  final String price;
  final String date;
  final String time;
  final int quantity;
  final Function()? onPressed;
  final OrderStatus status;

  @override
  Widget build(BuildContext context) {
    const aBeeZeeFont = TextStyle(
      fontFamily: FontFamily.aBeeZee,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );
    const proximaNovaFont = TextStyle(
      fontFamily: FontFamily.proximaNova,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                image,
                width: 40,
                height: 40,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$quantity $title',
                    style: aBeeZeeFont,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: date,
                      style: aBeeZeeFont.copyWith(
                        fontSize: 12,
                        color: const Color.fromRGBO(38, 39, 58, 0.6),
                      ),
                      children: [
                        TextSpan(text: time, style: proximaNovaFont),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(price, style: aBeeZeeFont),
                const SizedBox(height: 5),
                RoundedContainer(
                  borderRadius: 4,
                  color: status.color.withOpacity(0.3),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Text(
                    status.name,
                    style: proximaNovaFont.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: status.color,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
