import 'package:flutter/material.dart';

import '../core/constants/color_const.dart';
import '../core/constants/padding_const.dart';
import '../core/constants/radius_const.dart';

class Bento extends StatelessWidget {
  final double height;
  final double width;
  final Widget widget;
  const Bento({
    super.key,
    required this.height,
    required this.width,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConst().padding8All,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: ColorConst.elevation0Color,
          borderRadius: BorderRadius.circular(RadiusConst.r64),
          border: Border.all(
            color: ColorConst.borderColor,
          ),
        ),
        child: widget,
      ),
    );
  }
}
