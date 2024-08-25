import 'package:flutter/material.dart';
import 'package:hug_mun/models/dark_transition.dart';
import 'package:hug_mun/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  Offset offset = Offset.zero;

  SplashScreen({super.key, required this.offset});

  static Route route() => MaterialPageRoute<void>(
      builder: (_) => SplashScreen(offset: Offset.zero));

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) => DarkTransition(
        childBuilder: (context, x) => HomeScreen(
          getThemeIconOffset: (Offset offset) {
            setState(() {
              print("splash offset: $offset");
              widget.offset = offset;
              isDark = !isDark;
            });
          },
        ),
        offset: widget.offset,
        isDark: isDark,
      );
}
