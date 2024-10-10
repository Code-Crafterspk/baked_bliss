import 'package:baked_bliss/common/widgets/primary_filled_button.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTab {
  final String title;
  final String icon;

  const CustomTab({required this.title, required this.icon});
}

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    this.onTabChanged,
  });

  final List<CustomTab> tabs;
  final int selectedIndex;
  final Function(int index)? onTabChanged;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  late int _selectedIndex;
  @override
  void initState() {
    _selectedIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const greenColor = AppColors.checkOutScreenPrimary;
    final tabs = widget.tabs;
    const aBeeZeeFont = TextStyle(
      fontFamily: FontFamily.aBeeZee,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    );

    return Card(
      margin: EdgeInsets.zero,
      borderOnForeground: false,
      clipBehavior: Clip.hardEdge,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      elevation: 5,
      child: Row(
        children: [
          for (int i = 0; i < tabs.length; i++)
            if (i == _selectedIndex)
              Expanded(
                child: PrimaryFilledButton.icon(
                  height: 79,
                  onPressed: () {},
                  icon: Image.asset(
                    tabs[i].icon,
                    color: Colors.white,
                  ),
                  backgroundColor: greenColor,
                  title: tabs[i].title,
                ),
              )
            else
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    setState(() {
                      _selectedIndex = i;
                      if (widget.onTabChanged != null) widget.onTabChanged!(i);
                    });
                  },
                  child: SizedBox(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(tabs[i].icon, color: Colors.black),
                        const SizedBox(width: 10),
                        Text(
                          tabs[i].title,
                          style: aBeeZeeFont,
                        ),
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
