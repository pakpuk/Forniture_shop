import 'package:flutter/material.dart';
import 'package:fourniture_shop/core/colors_manager.dart';
import 'package:fourniture_shop/core/text_manager.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: 320,
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(width: 1.4, color: ColorsManager.greycolor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.search_outlined,
            color: ColorsManager.greycolor,
            size: 15,
          ),
          const Gap(8),
          Text(
            TextManager.searchBarHint,
            style: GoogleFonts.inter(
              color: ColorsManager.greycolor,
              fontSize: 15,
            ),
          ),
          Row(
            children: [const Divider()],
          )
        ],
      ),
    );
  }
}
