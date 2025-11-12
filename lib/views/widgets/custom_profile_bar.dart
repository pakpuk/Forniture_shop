import 'package:flutter/material.dart';
import 'package:fourniture_shop/core/colors_manager.dart';

class CustomProfileBar extends StatelessWidget {
  const CustomProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(data),
        CircleAvatar(
          radius: 22,
          backgroundColor: ColorsManager.primayColor,
          child: CircleAvatar(
            radius: 20,
            child: Image.asset(name),
          ),
        )
      ],
    );
  }
}
