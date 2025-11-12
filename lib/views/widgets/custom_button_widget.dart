import 'package:flutter/material.dart';
import 'package:fourniture_shop/core/colors_manager.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.ontap,
      this.width,
      this.raduis,
      required this.title,
      this.backgroundColor});
  final VoidCallback ontap;
  final double? width;
  final double? raduis;
  final String title;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width ?? double.infinity,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: backgroundColor ?? ColorsManager.primayColor),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                color: ColorsManager.whiteColor,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
