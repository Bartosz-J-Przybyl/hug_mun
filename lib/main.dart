import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hug_mun/api/client.dart';
import 'package:hug_mun/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:hug_mun/blocs/login/bloc/login_bloc.dart';
import 'package:hug_mun/repositories/authentication_repository.dart';
import 'package:hug_mun/repositories/user_repository.dart';
import 'package:hug_mun/screens/auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:hug_mun/screens/home_screen.dart';
import 'package:hug_mun/screens/splash.dart';
import 'di/dependency_injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  injectDependencies();
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final authenticationRepository = GetIt.instance<AuthenticationRepository>();
    final userRepository = GetIt.instance<UserRepository>();

    return RepositoryProvider.value(
      value: authenticationRepository,
      child: BlocProvider(
        create: (_) => AuthenticationBloc(
            authenticationRepository: authenticationRepository,
            userRepository: userRepository),
        child: MainApp(),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      builder: (context, child) =>
          BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          switch (state.status) {
            case AuthenticationStatus.authenticated:
              _navigator.pushAndRemoveUntil<void>(
                  HomeScreen.route(), (route) => false);
              break;
            case AuthenticationStatus.unauthenticated:
              _navigator.pushAndRemoveUntil<void>(
                  AuthScreen.route(), (route) => false);
              break;
            default:
              break;
          }
        },
        child: child,
      ),
      onGenerateRoute: (_) => SplashScreen.route(),
    );
  }
}
