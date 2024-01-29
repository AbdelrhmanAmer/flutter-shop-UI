import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    required this.press,
    required this.currentIndex,
    this.selectedIndex = 1, 
  });
  final Color color;
  final VoidCallback press;
  final int currentIndex;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(right: defaultPadding/4),
        padding: const EdgeInsets.all(2.5),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: currentIndex==selectedIndex?Colors.redAccent: Colors.transparent),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
      ),
    );
  }
}
