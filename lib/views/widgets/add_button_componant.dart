import 'package:flutter/material.dart';
import 'package:fourniture_shop/core/colors_manager.dart';

class AddButtonComponant extends StatelessWidget {
  const AddButtonComponant({
    super.key,
    required this.ontap,
  });
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 42,
        height: 42,
        color: ColorsManager.primayColor,
        child: const Center(
          child: Icon(
            Icons.add,
            size: 18,
            color: ColorsManager.whiteColor,
          ),
        ),
      ),
    );
  }
}
