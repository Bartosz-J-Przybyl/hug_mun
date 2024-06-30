import 'package:flutter/material.dart';
import 'package:hug_mun/models/dark_transition.dart';
import 'package:hug_mun/screens/home_screen.dart';
import 'package:hug_mun/widgets/main_drawer.dart';

class SplashScreen extends StatefulWidget {
  
  const SplashScreen({
    super.key,
  });
  final offset = Offset.zero;

  static Route route() =>
      MaterialPageRoute<void>(builder: (_) => const SplashScreen());

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isDark = false;

  // void c(GlobalKey fKey) {
  //   final rect = fKey.globalPaintBounds;
  //   double left = rect!.left;
  //   double bottom = rect!.bottom;

  //   setState(() {
  //     Offset newOffset = Offset(left, bottom);
  //     newOffset = widget.offset;
  //     print('Splash state ${rect}');
  //   });
  // }

  @override
  Widget build(BuildContext context) {
 
    return DarkTransition(
      childBuilder: (context, x) => HomeScreen(  
        letsDoThis: () {
          setState(() {
            isDark = !isDark;
          });
        },
      ),
      offset: widget.offset,
      isDark: isDark,
    );
  }
}
