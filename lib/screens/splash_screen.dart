import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hug_mun/models/dark_transition.dart';
import 'package:hug_mun/screens/home_screen.dart';
import 'package:hug_mun/services/secure_store_service.dart';

class SplashScreen extends StatefulWidget {
  Offset offset = Offset.zero;

  SplashScreen({super.key, required this.offset});

  static Route route() => MaterialPageRoute<void>(
      builder: (_) => SplashScreen(offset: Offset.zero));

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _secureStoreService = GetIt.instance.get<SecureStoreService>();
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    // _secureStoreService.read("theme").then((value) {
    //   print("theme ${value}");
    //   if (value != null) {
    //     isDark = value == "dark";
    //   }
    // });

    return FutureBuilder(
        future: _secureStoreService.readOrDefault("theme", "dark"),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            // while data is loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            final theme = snapshot.data;
            print("theme ${theme}");
            if (theme != null) {
              isDark = theme == "dark";
            }
            return DarkTransition(
              childBuilder: (context, x) => HomeScreen(
                getThemeIconOffset: (Offset offset) {
                  setState(() {
                    widget.offset = offset;
                    isDark = !isDark;
                  });
                },
              ),
              offset: widget.offset,
              isDark: isDark,
            );
          }
        });
  }
}
