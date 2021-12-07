import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_groceries_app_ui/constants/constants.dart';

class InputField extends StatelessWidget {
  final String heading;
  final String title;
  final bool obscureText;

  const InputField({
    Key? key,
    required this.title,
    required this.heading,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(heading,
            style: GoogleFonts.openSans(fontSize: 22.0, letterSpacing: 2.0)),
        TextField(
          enabled: true,
          decoration: InputDecoration(
            isDense: true,
            border: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF7C7C7C))),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF7C7C7C))),
            hintText: title,
          ),
          obscureText: obscureText,
        ),
      ],
    );
  }
}
