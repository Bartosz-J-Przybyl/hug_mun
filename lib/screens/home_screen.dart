import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hug_mun/assets/assets.dart';
import 'package:hug_mun/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:hug_mun/widgets/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static Route route() =>
      MaterialPageRoute<void>(builder: (ctx) => const HomeScreen());

  @override
  Widget build(BuildContext context) {
    const _appBarTitle = "Welcome";
    const _craTitle = 'Cra!!!';

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const MainDrawer(),
      appBar: AppBar(
        iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.background),
        title: const Text(_appBarTitle),
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
      body: _UserData(),
    );
  }
}

class _UserData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
        buildWhen: (previous, current) => previous.user != current.user,
        builder: (context, state) {
          final username = "${state.user.username}";
          return Center(
              child: Column(
            children: [
              const Text("You are login as:"),
              Text(username),
            ],
          ));
        });
  }
}
