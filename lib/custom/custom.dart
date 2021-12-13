import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_groceries_app_ui/constants/constants.dart';

goToNext(BuildContext context, Widget screen) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));

Widget topCarrotImage() {
  return SvgPicture.asset('assets/images/car1.svg', height: 70.0, width: 70.0);
}

TextStyle defaultTextStyle() {
  return GoogleFonts.openSans(
      fontSize: 20.0, color: mBlack, fontWeight: FontWeight.w600);
}
