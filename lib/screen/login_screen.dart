import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_groceries_app_ui/constants/constants.dart';
import 'package:online_groceries_app_ui/custom/button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack, overlays: []);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: mBackgroundColor,
        systemNavigationBarColor: mBackgroundColor));
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/groceries.png'),
                Text('Get Your Groceries\nwith nectar',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 22.0,
                        letterSpacing: 1.5)),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    icon: FittedBox(
                      child: Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: Image.asset('assets/images/ban2.png',
                                  height: 50.0, width: 40.0)),
                          const SizedBox(width: 4.0),
                          const Text('+880')
                        ],
                      ),
                    ),
                  ),
                ),
                const Divider(color: Color(0xFFE2E2E2), thickness: 2.0),
                Align(
                    alignment: Alignment.center,
                    child: Text('Or Connect with social media',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12.0,
                            letterSpacing: 1.5))),
                const SizedBox(height: 30.0),
                Button('Google', FontAwesomeIcons.google, () {}, mButtonColor1),
                const SizedBox(height: 15.0),
                Button('Facebook', FontAwesomeIcons.facebook, () {},
                    mButtonColor2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
