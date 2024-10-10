import 'package:baked_bliss/features/personalization/presentation/screens/main_menu_screen.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class MainMenuTile extends StatelessWidget {
  const MainMenuTile(
    this.menuItem, {
    super.key,
  });
  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final (onTap, title, icon) =
        (menuItem.onTap, menuItem.title, menuItem.icon);
    return ListTile(
      onTap: onTap,
      leading: Image.asset(icon, width: 24, height: 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: FontFamily.inter,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
