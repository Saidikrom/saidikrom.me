import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/constants/color_const.dart';

class ProgrammingLanguages extends StatelessWidget {
  const ProgrammingLanguages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      "Skills",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: ColorConst.primaryColor,
                      ),
                    ),
                    Text(
                      "Programming languages, tools and technologies",
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
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                apps("assets/icons/flutter_icon.png",
                    "assets/icons/c#_icon.png", MainAxisAlignment.end),
                apps("assets/icons/django_icon.png",
                    "assets/icons/Python_icon.png", MainAxisAlignment.start),
                apps("assets/icons/angular_icon.png",
                    "assets/icons/Java_icon.png", MainAxisAlignment.end),
                apps("assets/icons/JavaScript_icon.png",
                    "assets/icons/mysql_icon.png", MainAxisAlignment.start),
                apps("assets/icons/unity_icon.png",
                    "assets/icons/Blender_icon.png", MainAxisAlignment.end),
                apps("assets/icons/figma_icon.png",
                    "assets/icons/photoshop_icon.png", MainAxisAlignment.start),
                apps("assets/icons/Git_icon.png", "assets/icons/AR_icon.png",
                    MainAxisAlignment.end),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget apps(String icon, String icon2, MainAxisAlignment mainAxisAlignment) {
  return SizedBox(
    height: 175,
    child: Column(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Image.asset(
          icon2,
          height: 60,
          width: 60,
        ),
        const SizedBox(
          height: 30,
        ),
        Image.asset(
          icon,
          height: 60,
          width: 60,
        ),
      ],
    ),
  );
}
