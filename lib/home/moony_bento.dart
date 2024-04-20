import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/constants/color_const.dart';

class MoonyBento extends StatelessWidget {
  const MoonyBento({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/moony_image.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40),
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
                        "Moony",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: ColorConst.primaryColor,
                        ),
                      ),
                      Text(
                        "Moon phase",
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
