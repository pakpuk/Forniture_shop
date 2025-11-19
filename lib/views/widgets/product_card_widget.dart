import 'package:flutter/material.dart';
import 'package:fourniture_shop/core/colors_manager.dart';
import 'package:fourniture_shop/views/widgets/add_button_componant.dart';
import 'package:gap/gap.dart';

class ProductCardWidget extends StatefulWidget {
  const ProductCardWidget({super.key});

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 30),
      decoration: const BoxDecoration(
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/c7d2674006d4e14181d44a5ffd4a714b-removebg-preview 2.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Gap(10),
          Text(
            "Modern chair",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Gap(8),
          Text(
            "Armchair",
            style: TextStyle(
              color: ColorsManager.greyTextColor,
              fontSize: 12,
            ),
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(" \$ 12500"), AddButtonComponant(ontap: () {})],
          )
        ],
      ),
    );
  }
}
