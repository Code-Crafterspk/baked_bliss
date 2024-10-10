import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/features/personalization/presentation/widget/account_section_item.dart';
import 'package:baked_bliss/features/personalization/presentation/widget/recent_order_section.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/app_routes.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: RoundedContainer(
        borderRadius: 16,
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          children: [
            AccountSectionItem(
              title: AppConstants.updateProfile,
              icon: AssetsIcons.person,
              onPressed: () {
                Get.toNamed(AppRoutes.profileUpdate);
              },
            ),
            AccountSectionItem(
              title: AppConstants.savedAddresses,
              icon: AssetsIcons.phoneBook,
              onPressed: () {},
            ),
            AccountSectionItem(
              title: AppConstants.notification,
              icon: AssetsIcons.bell,
              trialing: Switch.adaptive(
                value: false,
                onChanged: (value) {},
                inactiveTrackColor: const Color.fromRGBO(75, 75, 75, 1),
                activeColor: AppColors.switchActive,
                inactiveThumbColor: AppColors.white,
              ),
            ),
            const SizedBox(height: 10),
            const RecentOrderSection(),
          ],
        ),
      ),
    );
  }
}
