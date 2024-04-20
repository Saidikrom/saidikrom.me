import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants/color_const.dart';
import '../core/constants/radius_const.dart';

class SOFFBento extends StatelessWidget {
  const SOFFBento({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RadiusConst.r64),
        image: const DecorationImage(
          image: AssetImage("assets/images/soff_image.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "SOFF",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: ColorConst.primaryColor,
                      ),
                    ),
                    Text(
                      "Startup",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: ColorConst.secondaryColor,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset("assets/icons/arrow_right.svg"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
