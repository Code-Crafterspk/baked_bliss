import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/utils/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.search);
      },
      child: RoundedContainer(
        height: 65,
        borderRadius: 25,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          children: [
            Image.asset(AssetsIcons.search, width: 20, height: 20),
            const SizedBox(width: 10),
            const Text(
              'Search for food',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const Spacer(),
            Image.asset(AssetsIcons.filter, width: 25, height: 22),
          ],
        ),
      ),
    );
  }
}
