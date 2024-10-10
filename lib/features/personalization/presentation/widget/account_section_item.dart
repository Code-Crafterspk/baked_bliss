import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class AccountSectionItem extends StatelessWidget {
  const AccountSectionItem({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
    this.trialing,
    this.leading,
  });
  final String title;
  final String icon;
  final Function()? onPressed;
  final Widget? trialing;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    const lightBlack = AppColors.lightBlack;
    const interFont = TextStyle(
      fontFamily: FontFamily.inter,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: lightBlack,
    );
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      tileColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      minLeadingWidth: 30,
      leading: leading ?? Image.asset(icon, color: lightBlack),
      title: Text(
        title,
        style: interFont,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: trialing ?? const Icon(Icons.arrow_forward_ios),
      onTap: onPressed,
    );
  }
}
