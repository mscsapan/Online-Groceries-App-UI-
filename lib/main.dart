import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_groceries_app_ui/controller/scroll_controller.dart';
import 'package:provider/provider.dart';

import 'constants/constants.dart';
import 'screen/find_product_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: mBackgroundColor,
      statusBarColor: mBackgroundColor,
      statusBarIconBrightness: Brightness.light));
  runApp(MaterialApp(
    theme: ThemeData(
        scaffoldBackgroundColor: mBackgroundColor,
        appBarTheme: const AppBarTheme(
            backgroundColor: mBackgroundColor,
            elevation: 0.0,
            titleTextStyle: TextStyle(color: mWhite))),
    home: MultiProvider(
      providers: [
        Provider(create: (context) => ScrollerController()),
      ],
      child: const FindProductScreen(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
