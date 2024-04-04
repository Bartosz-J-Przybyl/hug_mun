import 'package:flutter/material.dart';
import 'package:hug_mun/widgets/reusable_text_form_field.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -155,
              child: Image.asset(
                "lib/assets/images/kruk.png",
                width: 300,
              ),
            ),
            Card(
              color:
                  Theme.of(context).colorScheme.onBackground.withOpacity(0.30),
              margin: const EdgeInsets.all(20),
              child: const SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 25),
                  child: Form(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ReusableTextFormField(
                          labelText: "Email Address",
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                        ),
                        ReusableTextFormField(
                            labelText: "Password", obscureText: true),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
