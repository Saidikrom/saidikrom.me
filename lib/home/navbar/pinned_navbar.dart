import 'package:flutter/material.dart';
import 'package:saidikromme/core/constants/color_const.dart';
import 'package:saidikromme/core/constants/padding_const.dart';
import 'package:saidikromme/core/constants/radius_const.dart';
import '../../widgets/navbar_element_widget.dart';

class PinnedNavbar extends StatefulWidget {
  const PinnedNavbar({
    super.key,
  });

  @override
  State<PinnedNavbar> createState() => _PinnedNavbarState();
}

class _PinnedNavbarState extends State<PinnedNavbar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConst().paddingTop,
      child: Container(
        height: 64,
        width: 648,
        decoration: BoxDecoration(
          color: ColorConst.elevation0Color,
          borderRadius: BorderRadius.circular(RadiusConst.r80),
          border: Border.all(
            color: ColorConst.borderColor,
          ),
        ),
        child: Padding(
          padding: PaddingConst().padding8All,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {});
                    currentIndex = 0;
                  },
                  child: NavbarElement(
                      currentIndex: currentIndex, text: "Home", index: 0)),
              InkWell(
                  onTap: () {
                    setState(() {});
                    currentIndex = 1;
                  },
                  child: NavbarElement(
                      currentIndex: currentIndex, text: "About", index: 1)),
              InkWell(
                  onTap: () {
                    setState(() {});
                    currentIndex = 2;
                  },
                  child: NavbarElement(
                      currentIndex: currentIndex, text: "Projects", index: 2)),
              InkWell(
                  onTap: () {
                    setState(() {});
                    currentIndex = 3;
                  },
                  child: NavbarElement(
                      currentIndex: currentIndex, text: "Contact", index: 3)),
            ],
          ),
        ),
      ),
    );
  }
}
