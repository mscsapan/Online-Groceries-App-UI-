import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {
  final String title;
  final String subtitle;

  const Heading({Key? key, required this.title, this.subtitle = 'See All'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Text(subtitle,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              color: const Color(0xFF53B175),
              fontSize: 16.0)),
      leading: Text(
        title,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: const Color(0xFF181725),
            fontSize: 20.0),
      ),
    );
  }
}
