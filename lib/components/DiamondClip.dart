import 'package:flutter/material.dart';

class DiamondClip extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = Path();

    var factor = 0.15;

    path.moveTo(0, size.height * factor);
    path.lineTo(size.width * (1 - factor), 0);
    path.lineTo(size.width, size.height * (1 - factor));
    path.lineTo(size.width * factor, size.height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}