import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saidikromme/cubit/github_contributions_cubit.dart';

import '../core/constants/color_const.dart';

class LastExperience extends StatefulWidget {
  const LastExperience({super.key});

  @override
  State<LastExperience> createState() => _LastExperienceState();
}

class _LastExperienceState extends State<LastExperience> {
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
                      "Last work experience",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: ColorConst.primaryColor,
                      ),
                    ),
                    Text(
                      "Works",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: ColorConst.secondaryColor,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      print("hi");
                    });
                    GithubContributionsCubit().fetchProducts();
                  },
                  child: SvgPicture.asset("assets/icons/arrow_right.svg"),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Flutter internship",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: ColorConst.primaryColor,
                      ),
                    ),
                    Text(
                      "Opticom",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: ColorConst.secondaryColor,
                      ),
                    ),
                  ],
                ),
                Text(
                  "July 2022 - September 2022",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: ColorConst.secondaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
