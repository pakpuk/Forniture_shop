import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fourniture_shop/core/colors_manager.dart';
import 'package:fourniture_shop/models/category_model.dart';
import 'package:fourniture_shop/views/screens/get_started_screen.dart';
import 'package:fourniture_shop/views/widgets/categories_box.dart';
import 'package:fourniture_shop/views/widgets/custom_profile_bar.dart';
import 'package:fourniture_shop/views/widgets/product_card_widget.dart';
import 'package:fourniture_shop/views/widgets/search_bar_widget.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.whiteColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomProfileBar(),
              const Gap(25),
              const SearchBarWidget(),
              const Gap(25),
              SizedBox(
                height: 60.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (builder, index) {
                      bool isSelected = index == selectedIndex;
                      return CategoriesBoxWidget(
                        ontap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        backgroundColor: isSelected
                            ? ColorsManager.primayColor
                            : Colors.grey[200]!,
                        textColor: isSelected
                            ? ColorsManager.whiteColor
                            : ColorsManager.mainTextColor,
                        categoryName: categoryList[index].categroyName,
                      );
                    },
                    separatorBuilder: (context, index) => const Gap(12),
                    itemCount: categoryList.length),
              ),
              const Gap(25),
              SizedBox(
                height: 300.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ProductCardWidget(
                        productItem: null,
                      );
                    }),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
