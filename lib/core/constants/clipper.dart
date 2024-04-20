import 'package:flutter/material.dart';

/// Define the BubbleType enum in your code.
enum BubbleType { sendBubble, receiverBubble }

class ChatBubbleClipper2 extends CustomClipper<Path> {
  final BubbleType? type;
  final double radius;
  final double nipHeight;
  final double nipWidth;
  final double nipRadius;

  ChatBubbleClipper2(
      {this.type,
      this.radius = 10,
      this.nipHeight = 10,
      this.nipWidth = 15,
      this.nipRadius = 3});

  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(size.width - radius, 0);
    path.arcToPoint(Offset(size.width, radius),
        radius: Radius.circular(radius));
    path.lineTo(size.width, size.height - radius);
    path.arcToPoint(Offset(size.width - radius, size.height),
        radius: Radius.circular(radius));
    path.lineTo(nipRadius, size.height);
    path.arcToPoint(Offset(nipRadius, size.height - nipRadius),
        radius: Radius.circular(nipRadius));
    path.lineTo(nipWidth, size.height - nipHeight);
    path.lineTo(nipWidth, radius);
    path.arcToPoint(Offset(radius + nipWidth, 0),
        radius: Radius.circular(radius));

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
