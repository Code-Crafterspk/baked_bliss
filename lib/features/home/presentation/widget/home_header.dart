import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/features/home/presentation/widget/rounded_button.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const playfairDisplay = TextStyle(
      fontFamily: FontFamily.playfairDisplay,
      fontSize: 32,
      fontWeight: FontWeight.w900,
    );

    return SizedBox(
      height: 340,
      child: Stack(
        children: [
          Image.asset(
            AssetsImages.productImage1,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundedButton(
                    icon: AssetsIcons.menu,
                    onPressed: () {
                      final isDrawerOpen = Scaffold.of(context).isDrawerOpen;

                      if (isDrawerOpen) {
                        Scaffold.of(context).closeDrawer();
                      } else {
                        Scaffold.of(context).openDrawer();
                      }
                    }),
                RoundedButton(icon: AssetsIcons.notification, onPressed: () {}),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: RoundedContainer(
              height: 180,
              width: size.width * 0.8,
              borderRadius: 20,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      AssetsIcons.bakedBlissShadow,
                      height: 160,
                    ),
                    const Positioned(
                        bottom: 20,
                        child: Text('Baked Bliss', style: playfairDisplay)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
