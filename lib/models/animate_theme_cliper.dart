import 'package:flutter/material.dart';

class ATC extends CustomClipper<Path> {
  ATC(this.value);
  final double value;

  @override
  Path getClip(Size size) {
    final path = Path();
    path.addOval(
      Rect.fromCircle(
        center: Offset.zero,
        // (
        //   size.width,
        //   size.height,
        // ),
        radius: value * size.height,
      ),
    );
    // path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
