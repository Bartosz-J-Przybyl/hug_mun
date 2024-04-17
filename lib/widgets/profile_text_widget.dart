import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTextWidget extends StatelessWidget {
  const ProfileTextWidget({
    super.key,
    required this.text,
    required this.size,
  });

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.1),
      ),
      child: Text(
        text,
        style: GoogleFonts.firaCode().copyWith(
          color: Theme.of(context).colorScheme.background,
          fontSize: size,
        ),
      ),
    );
  }
}
