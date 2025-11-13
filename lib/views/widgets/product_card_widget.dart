import 'package:flutter/material.dart';
import 'package:fourniture_shop/core/colors_manager.dart';
import 'package:gap/gap.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorsManager.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(22)),
      ),
      child: Column(
        children: [
          Container(
            // padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorsManager.productContainerColor),
            child: Center(
              child: Image.asset(
                "assets/images/c7d2674006d4e14181d44a5ffd4a714b-removebg-preview 2.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(10),
          Text(
            "Modern chair",
            style: TextStyle(),
          )
        ],
      ),
    );
  }
}
