import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableTextFormField extends StatelessWidget {
  const ReusableTextFormField({
    super.key,
    this.keyboardType,
    this.validator,
    required this.labelText,
    required this.obscureText,
    this.onSave,
    this.onChange,
  });

  final String labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSave;
  final void Function(String?)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.amber,
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          fontSize: 14,
          color: Colors.red,
          fontWeight: FontWeight.w500,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        labelText: labelText,
        floatingLabelStyle: GoogleFonts.firaCode().copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        labelStyle: GoogleFonts.firaCode().copyWith(
            color: Theme.of(context).colorScheme.onPrimary, fontSize: 14),
      ),
      style: GoogleFonts.firaCode().copyWith(
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      keyboardType: keyboardType,
      autocorrect: false,
      textCapitalization: TextCapitalization.none,
      validator: validator,
      obscureText: obscureText,
      onSaved: onSave,
      onChanged: onChange,
    );
  }
}
