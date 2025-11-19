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
  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
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
                      return CategoriesBoxWidget(
                        backgroundColor: categoryList[index].isSelected,
                        textColor: textColor,
                        categoryName: categoryList[index].categroyName,
                      );
                    },
                    separatorBuilder: (context, index) => const Gap(12),
                    itemCount: categoryList.length),
              ),
              const Gap(25),
              ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const ProductCardWidget();
                  }),
            ],
          ),
        ),
      )),
    );
  }
}
