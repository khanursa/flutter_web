import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopPainterHeadline extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final screenSize = MediaQuery.of(Get.context).size;
    final path = Path();
    Rect rect1 = Offset.zero & Size(screenSize.width * 0.25, screenSize.height);

    path.addRect(rect1);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
