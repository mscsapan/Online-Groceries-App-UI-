import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

goToNext(BuildContext context, Widget screen) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));

Widget topCarrotImage() {
  return SvgPicture.asset('assets/images/car1.svg',
      height: 100.0, width: 100.0);
}
