import 'package:flutter/material.dart';
import 'package:fourniture_shop/core/colors_manager.dart';
import 'package:fourniture_shop/views/widgets/custom_profile_bar.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            ],
          ),
        ),
      )),
    );
  }
}
