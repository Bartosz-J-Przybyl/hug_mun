import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hug_mun/assets/assets.dart';
import 'package:hug_mun/blocs/authentication/bloc/authentication_bloc.dart';

class TabPage extends StatelessWidget {
  final int tab;
  const TabPage({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
        buildWhen: (previous, current) => previous.user != current.user,
        builder: (context, state) {
          final username = "${state.user.username}";
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.background2),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You are login as:",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  Text(
                    username,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Tab $tab",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ],
              )),
            ),
          );
        });
  }
}
