import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;
import '../core/constants/clipper.dart';
import '../core/constants/color_const.dart';
import '../core/constants/radius_const.dart';

class TelegramChannel extends StatelessWidget {
  const TelegramChannel({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RadiusConst.r64),
        image: const DecorationImage(
            image: AssetImage("assets/images/telegramBg_image.png"),
            fit: BoxFit.cover,
            opacity: 0.6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(64),
              topRight: Radius.circular(64),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                height: 85,
                width: 370,
                decoration: BoxDecoration(
                  color: ColorConst.elevation0Color.withOpacity(.2),
                  border: Border.all(
                    color: ColorConst.borderColor,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 30, right: 30, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Flutterchi",
                            style: GoogleFonts.poppins(
                                color: ColorConst.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "60 subrscribers",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: ColorConst.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: ColorConst.elevation0Color,
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/channel_image.jpg",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 350,
            height: 70,
            child: InkWell(
              onTap: () {
                html.window.open("https://t.me/flutterchii/99", "Post");
              },
              child: ClipPath(
                clipper: ChatBubbleClipper2(type: BubbleType.sendBubble),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: PhysicalShape(
                    clipper: ChatBubbleClipper2(type: BubbleType.sendBubble),
                    color: ColorConst.elevation1Color.withOpacity(.1),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 30, right: 20),
                      child: Column(
                        children: [
                          Text(
                            "A new year is a chance to start over and make things better.",
                            style: GoogleFonts.poppins(
                              color: ColorConst.primaryColor,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.remove_red_eye,
                                size: 15,
                                color: ColorConst.secondaryColor,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "268",
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: ColorConst.secondaryColor,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "12:25 AM",
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: ColorConst.secondaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(65),
              bottomRight: Radius.circular(65),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: InkWell(
                highlightColor: Colors.transparent,
                onTap: () {
                  html.window
                      .open("https://t.me/flutterchii", "Flutterchi Telegram");
                },
                child: Container(
                  height: 50,
                  width: width,
                  decoration: BoxDecoration(
                    color: ColorConst.elevation0Color.withOpacity(.2),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(RadiusConst.r64),
                      bottomRight: Radius.circular(RadiusConst.r64),
                    ),
                    border: Border.all(
                      color: ColorConst.borderColor,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "follow",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        color: Colors.blue,
                        fontFamily: 'SF Pro Text',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
