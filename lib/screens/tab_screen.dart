import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hug_mun/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:hug_mun/screens/call_screen.dart';
import 'package:hug_mun/screens/contact_screen.dart';
import 'package:hug_mun/screens/message_screen.dart';

class TabPage extends StatelessWidget {
  final int tab;
  const TabPage({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      buildWhen: (previous, current) => previous.user != current.user,
      builder: (context, state) {
        if (tab == 1) {
          return ContactScreen();
        }
        if (tab == 2) {
          return MessageScreen();
        }
        if (tab == 4) {
          return CallScreen();
        } else {
          return Text("empty");
        }
      },
    );
  }
}
