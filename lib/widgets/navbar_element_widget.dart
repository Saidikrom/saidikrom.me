import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants/color_const.dart';
import '../core/constants/radius_const.dart';

class NavbarElement extends StatelessWidget {
  const NavbarElement({
    super.key,
    required this.currentIndex,
    required this.text,
    required this.index,
  });

  final int currentIndex;
  final int index;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 148,
      decoration: currentIndex == index
          ? BoxDecoration(
              color: ColorConst.elevation1Color,
              borderRadius: BorderRadius.circular(RadiusConst.r80),
              border: Border.all(
                color: ColorConst.borderColor,
              ),
            )
          : null,
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(
            color: ColorConst.primaryColor,
          ),
        ),
      ),
    );
  }
}
