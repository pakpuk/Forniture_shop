import 'package:flutter/material.dart';
import 'package:fourniture_shop/core/colors_manager.dart';
import 'package:fourniture_shop/core/text_manager.dart';

class CustomProfileBar extends StatelessWidget {
  const CustomProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          TextManager.homeTitle,
          style: TextStyle(
            color: ColorsManager.greenlight,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          height: 56,
          width: 56,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset("assets/images/Ellipse 1.png"),
        ),
      ],
    );
  }
}
