import 'package:flutter/material.dart';

import 'package:hug_mun/widgets/light_cont.dart';
import 'package:hug_mun/widgets/shadow_cont.dart';

class Neumorphism extends StatelessWidget {
  const Neumorphism({
    super.key,
    this.radius,
    required this.masure,
    required this.child,
  });

  final double? radius;
  final double masure;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: ShadowClipper(),
          child: ShadowContainer(
            masure: masure,
          ),
        ),
        ClipPath(
          clipper: HighlightClipper(),
          child: LightContainer(
            masure: masure,
          ),
        ),
        Positioned(
          left: -2,
          top: -3,
          child: child,
        ),
      ],
    );
  }
}
