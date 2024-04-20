import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;
import '../core/constants/color_const.dart';

class DevelopedProjectsBento extends StatelessWidget {
  const DevelopedProjectsBento({
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
                      "Developed projects lasting 2 years",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: ColorConst.primaryColor,
                      ),
                    ),
                    Text(
                      "4 projects realised 🎉 ",
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
                apps("assets/icons/SOFF_icon.png", "SOFF", ""),
                apps("assets/icons/UZTV_icon.png", "UZTV", ""),
                apps("assets/icons/Optimedia_icon.png", "Optimedia",
                    "https://play.google.com/store/apps/details?id=uz.optimedia.optimedia"),
                apps("assets/icons/moony_icon.png", "Moony", ""),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget apps(String icon, String text, String url) {
  return InkWell(
    onTap: () {
      html.window.open(url, text);
    },
    child: Column(
      children: [
        Image.asset(
          icon,
          height: 110,
          width: 110,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: ColorConst.primaryColor,
          ),
        ),
      ],
    ),
  );
}
