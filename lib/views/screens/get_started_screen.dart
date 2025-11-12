import 'package:flutter/material.dart';
import 'package:fourniture_shop/core/colors_manager.dart';
import 'package:fourniture_shop/core/text_manager.dart';
import 'package:fourniture_shop/views/screens/home_screen.dart';
import 'package:fourniture_shop/views/widgets/custom_button_widget.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              TextManager.getstartedTitle,
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: ColorsManager.mainTextColor)),
            ),
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              TextManager.getstartedSubTitle,
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                fontSize: 13,
                color: ColorsManager.mainTextColor,
              )),
            ),
          ),
          const Gap(25),
          Center(
            child: CustomButtonWidget(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              title: TextManager.getStartedTextBtn,
            ),
          )
        ],
      )),
    );
  }
}
