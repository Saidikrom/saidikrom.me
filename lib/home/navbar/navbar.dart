import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dart:html' as html;

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 60, right: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 45,
            width: 232,
            child: Image.asset("assets/logo/saidikrom_logo.png"),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  html.window.open(
                      "https://www.instagram.com/saidikrom_003/", "Instagram");
                },
                child: SvgPicture.asset("assets/icons/instagram_icon.svg"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: InkWell(
                  onTap: () {
                    html.window.open(
                        "https://www.linkedin.com/in/saidikromkhon-yusupov/",
                        "Linkedin");
                  },
                  child: SvgPicture.asset("assets/icons/linkedin_icon.svg"),
                ),
              ),
              InkWell(
                onTap: () {
                  html.window.open("https://t.me/flutterchii", "Telegram");
                },
                child: SvgPicture.asset("assets/icons/telegram_icon.svg"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: InkWell(
                  onTap: () {
                    html.window.open("https://github.com/Saidikrom", "Github");
                  },
                  child: SvgPicture.asset("assets/icons/github_icon.svg"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
