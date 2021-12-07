import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_groceries_app_ui/authenticate/sign_in_screen.dart';
import 'package:online_groceries_app_ui/screen/login_screen.dart';
import 'package:online_groceries_app_ui/screen/splash_screen.dart';
import 'package:online_groceries_app_ui/screen/welcome_screen.dart';

import 'authenticate/sign_up_screen.dart';
import 'constants/constants.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: mBackgroundColor,
      statusBarColor: mBackgroundColor,
      statusBarIconBrightness: Brightness.light));
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: mBackgroundColor,
    ),
    home: const SignInScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
