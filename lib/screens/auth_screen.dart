import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:hug_mun/assets/assets.dart';
import 'package:hug_mun/blocs/login/bloc/login_bloc.dart';
import 'package:hug_mun/repositories/authentication_repository.dart';
import 'package:hug_mun/repositories/user_repository.dart';
import 'package:hug_mun/widgets/reusable_text_form_field.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  static Route route() =>
      MaterialPageRoute<void>(builder: (_) => const AuthScreen());

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var isLogin = true;

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: BlocProvider(
          create: (context) => LoginBloc(
            authenticationRepository:
                RepositoryProvider.of<AuthenticationRepository>(context),
            userRepository: RepositoryProvider.of<UserRepository>(context),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  clipBehavior: Clip.none,
                  children: [
                    Align(
                      child: Container(
                        height: MediaQuery.of(context).size.width,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).colorScheme.background),
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 80.0, sigmaY: 80.0),
                      child: Container(),
                    ),
                    Positioned(
                      top: -10,
                      child: Image.asset(
                        Assets.imagesCrow,
                        width: 300,
                      ),
                    ),
                    Positioned(
                      top: 145,
                      width: 400,
                      height: 250,
                      child: Card(
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.30),
                        margin: const EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 20, bottom: 25),
                            child: _UserCredentialsForm(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                _LoginButton(),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: Text(
                    isLogin ? "Create a account" : "Login",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.background),
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
}

class _UserCredentialsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) => previous.username != current.username,
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ReusableTextFormField(
                key: const Key('loginForm_usernameInput_textField'),
                onChange: (value) {
                  context.read<LoginBloc>().add(LoginUsernameChanged(value!));
                },
                labelText: 'username',
                obscureText: false,
              ),
              ReusableTextFormField(
                key: const Key('loginForm_passwordInput_textField'),
                onChange: (value) {
                  context.read<LoginBloc>().add(LoginPasswordChanged(value!));
                },
                obscureText: true,
                labelText: 'password',
              ),
            ],
          );
        });
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) =>
            state.status == FormzStatus.submissionInProgress
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    key: const Key('loginForm_continue_raisedButton'),
                    onPressed: () async {
                      context.read<LoginBloc>().add(const LoginSubmitted(),);
                    },
                    child: const Text('Login'),
                  ),
      );
}
