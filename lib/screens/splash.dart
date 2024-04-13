import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
      ),
      body: const Center(
        child: Text("Loading"),
      ),
    );
  }
}
