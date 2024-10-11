import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/features/personalization/presentation/widget/main_menu_tile.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class MenuItem {
  const MenuItem(
    this.onTap, {
    required this.title,
    required this.icon,
  });
  final String title;
  final String icon;
  final VoidCallback? onTap;
}

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const interFont = TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 15,
        fontWeight: FontWeight.w700);
    final List<MenuItem> menuItems = [
      MenuItem(() {}, title: 'Offers', icon: AssetsIcons.info),
      MenuItem(() {}, title: 'Contact us', icon: AssetsIcons.contact),
      MenuItem(() {}, title: 'Feedback', icon: AssetsIcons.feedback),
      MenuItem(() {}, title: 'Orders', icon: AssetsIcons.order),
      MenuItem(() {}, title: 'Logout', icon: AssetsIcons.logout),
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppColors.lightGrey,
                ),
              ),
              child: Row(
                children: [
                  Image.asset(AssetsIcons.codeCrafter),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'code-crafter',
                        style: interFont,
                      ),
                      Text(
                        'jahnagirkhan78112@gmail.com',
                        style: interFont.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) =>
                      MainMenuTile(menuItems[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
