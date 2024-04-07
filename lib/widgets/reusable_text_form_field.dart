import 'package:flutter/material.dart';

class ReusableTextFormField extends StatelessWidget {
  const ReusableTextFormField({
    super.key,
    this.keyboardType,
    this.validator,
    required this.labelText,
    required this.obscureText,
    required this.onSave,
  });

  final String labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSave;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontSize: 14,
          color: Colors.red,
          fontWeight: FontWeight.w500,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        labelText: labelText,
        floatingLabelStyle: const TextStyle(color: Colors.white, fontSize: 18),
        labelStyle: const TextStyle(color: Colors.white70, fontSize: 16),
      ),
      style: TextStyle(
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      keyboardType: keyboardType,
      autocorrect: false,
      textCapitalization: TextCapitalization.none,
      validator: validator,
      obscureText: obscureText,
      onSaved: onSave,
    );
  }
}
