import 'package:flutter/material.dart';
import 'package:fourniture_shop/core/text_manager.dart';
import 'package:gap/gap.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/unsplash_FkKClUPUURU.png"),
          const Gap(25),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              TextManager.getstartedTitle,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const Text(TextManager.getstartedSubTitle),
        ],
      )),
    );
  }
}
