import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/constants/color_const.dart';
import 'dart:html' as html;

class SayHello extends StatelessWidget {
  const SayHello({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 150,
                child: Text(
                  "Say, Hello",
                  style: GoogleFonts.poppins(
                    fontSize: 50,
                    color: ColorConst.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Image.asset(
                "assets/images/emoji.png",
                height: 50,
                width: 50,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              html.window.open(
                  "https://www.linkedin.com/in/saidikromkhon-yusupov/",
                  "Linkedin");
            },
            child: Image.asset(
              "assets/images/rotated_linkedin.png",
              // height: 50,
              // width: 50,
            ),
          ),
        ],
      ),
    );
  }
}
