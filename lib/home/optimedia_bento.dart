import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/constants/color_const.dart';

class OptimediaBento extends StatelessWidget {
  const OptimediaBento({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/optimedia_image.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Optimedia",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: ColorConst.primaryColor,
                        ),
                      ),
                      Text(
                        "TV, Movies, Series",
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
            ],
          ),
        ),
      ),
    );
  }
}
