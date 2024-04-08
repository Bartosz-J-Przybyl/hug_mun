import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hug_mun/assets/assets.dart';
import 'package:hug_mun/widgets/reusable_text_form_field.dart';

// TODO
// final _firebase = FirebaseAuth.instance;

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var isLogin = true;
  var _enteredEmail = "";
  var _enteredPassword = "";
  final _formKey = GlobalKey<FormState>();

  void _submit() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    if (isValid) {
      _formKey.currentState!.save();
// TODO
      // try {
      //   if (isLogin) {
      //     final userCredentials = await _firebase.signInWithEmailAndPassword(
      //       email: _enteredEmail,
      //       password: _enteredPassword,
      //     );
      //   } else {
      //     final userCredentials =
      //         await _firebase.createUserWithEmailAndPassword(
      //       email: _enteredEmail,
      //       password: _enteredPassword,
      //     );
      //   }
      // } on FirebaseAuthException catch (error) {
      //   if (error.code == "email-already-in-use") {}
      //   ScaffoldMessenger.of(context).clearSnackBars();
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(
      //       content: Text(error.message ?? "Authentication failed"),
      //     ),
      //   );
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
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
                          child: Form(
                            key: _formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ReusableTextFormField(
                                  labelText: "Email Address",
                                  keyboardType: TextInputType.emailAddress,
                                  obscureText: false,
                                  validator: (value) {
                                    if (value == null ||
                                        value.trim().isEmpty ||
                                        !value.contains("@")) {
                                      return "Please enter a valid email address";
                                    }
                                    return null;
                                  },
                                  onSave: (value) {
                                    _enteredEmail = value!;
                                  },
                                ),
                                ReusableTextFormField(
                                    onSave: (value) {
                                      _enteredPassword = value!;
                                    },
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().isEmpty ||
                                          value.trim().length < 6) {
                                        return "Password must be at least 6 characters long";
                                      }
                                      return null;
                                    },
                                    labelText: "Password",
                                    obscureText: true),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.background),
                onPressed: _submit,
                child: Text(
                  isLogin ? "Login" : "Sign Up",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
              ),
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
    );
  }
}
