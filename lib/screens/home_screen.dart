import 'package:flutter/material.dart';
import 'package:hug_mun/assets/assets.dart';
import 'package:hug_mun/widgets/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static Route route() => MaterialPageRoute<void>(builder: (ctx) => HomeScreen());

  @override
  Widget build(BuildContext context) {
    const _appBarTitle = "Welcome";
    const _craTitle = 'Cra!!!';
    const _logedInInTitle = "Logged in!";

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: MainDrawer(),
      appBar: AppBar(
        iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.background),
        title: Text(_appBarTitle),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              Assets.imagesCrow,
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
                  _craTitle,
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
        child: Text(_logedInInTitle),
      ),
    );
  }
}
