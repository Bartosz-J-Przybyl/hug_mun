import 'package:flutter/material.dart';

class ReusableTextFormField extends StatelessWidget {
  const ReusableTextFormField({
    super.key,
    required this.labelText,
     this.keyboardType,
    required this.obscureText,
  });

  final String labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        labelText: labelText,
        floatingLabelStyle: const TextStyle(color: Colors.white, fontSize: 16),
        labelStyle: const TextStyle(color: Colors.white60, fontSize: 12),
      ),
      style: TextStyle(
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      keyboardType: keyboardType,
      autocorrect: false,
      textCapitalization: TextCapitalization.none,
      obscureText: obscureText,
    );
  }
}
// 