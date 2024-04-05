import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hug_mun/widgets/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: MainDrawer(),
      appBar: AppBar(
        iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.background),
        title: (const Text("Welcome")),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              "lib/assets/images/kruk.png",
              width: 60,
              color: Colors.white,
              fit: BoxFit.cover,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.only(bottom: 100.0),
                duration: Duration(seconds: 1),
                content: Text(
                  'Cra!!!',
                  textAlign: TextAlign.center,
                  selectionColor: Colors.amber,
                ),
                backgroundColor: Colors.black,
              ));
            },
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.onBackground,
      ),
      body: Center(
        child: Text("Logged in!"),
      ),
    );
  }
}
