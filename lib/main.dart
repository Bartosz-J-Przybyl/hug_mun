import 'package:flutter/material.dart';
import 'package:hug_mun/screens/auth.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HUgMun',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const AuthScreen(),
      //  TODO
      // home: StreamBuilder(
      //   stream: ...,
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting)
      //       return SplashScreen();
      //     if (snapshot.hasData) {
      //       return HomeScreen();
      //     }
      //     return AuthScreen();
      //   },
      // ),
    );
  }
}
