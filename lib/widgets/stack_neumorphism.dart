import 'package:flutter/material.dart';
import 'package:hug_mun/assets/assets.dart';
import 'package:hug_mun/widgets/light_cont.dart';
import 'package:hug_mun/widgets/shadow_cont.dart';

class StackNeumorphism extends StatelessWidget {
  const StackNeumorphism({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: ShadowClipper(),
          child: const ShadowContainer(
            masure: 100,
          ),
        ),
        ClipPath(
          clipper: HighlightClipper(),
          child: const LightContainer(
            masure: 100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 40,
            child: Image.asset(
              Assets.imagesCrow,
              height: 100,
              color: Theme.of(context).colorScheme.background,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
