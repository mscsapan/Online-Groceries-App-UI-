import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_groceries_app_ui/constants/constants.dart';
import 'package:online_groceries_app_ui/custom/custom.dart';
import '../screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 6), (timer) {
      goToNext(context, const LoginScreen());
    });
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: statusBarColor,
        systemNavigationBarColor: statusBarColor));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: statusBarColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 60.0,
                  width: 60.0,
                  child: SvgPicture.asset('assets/images/car1.svg',
                      fit: BoxFit.cover)),
              const SizedBox(width: 5.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('nectar',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          height: 0.7,
                          color: mWhite,
                          letterSpacing: 2.5)),
                  const Text('online groceries',
                      style: TextStyle(
                          fontSize: 18.0, color: mWhite, letterSpacing: 1.5)),
                ],
              )
            ],
          ),
          const SizedBox(height: 10.0),
          const SpinKitDualRing(color: mWhite, lineWidth: 2.0)
        ],
      ),
    );
  }
}
