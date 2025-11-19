import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesBoxWidget extends StatelessWidget {
  const CategoriesBoxWidget(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.categoryName});
  final Color backgroundColor;
  final Color textColor;
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 93.w,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          categoryName,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
