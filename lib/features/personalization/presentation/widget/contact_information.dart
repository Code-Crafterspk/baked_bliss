import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/widgets.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    const montserratFont = TextStyle(
      fontFamily: FontFamily.montserrat,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppConstants.contactUs,
                  style: montserratFont.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'codecrafter@gmail.com',
                  style: montserratFont.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.lightBlack,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppConstants.basedIn,
                  style: montserratFont.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'f8 Markez Islamabad',
                  style: montserratFont.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.lightBlack,
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
