import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_groceries_app_ui/constants/constants.dart';
import 'package:online_groceries_app_ui/custom/custom.dart';
import 'package:online_groceries_app_ui/screen/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  final String image = 'assets/images/grocery-man.png';

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(image, fit: BoxFit.cover),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Welcome\nto our store',
                  style: GoogleFonts.openSans(
                      color: Colors.grey,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Get your groceries in as fast as one hour',
                  style:
                      GoogleFonts.openSans(color: Colors.grey, fontSize: 15.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: statusBarColor),
                        onPressed: () => goToNext(context, const LoginScreen()),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(color: mWhite, fontSize: 18.0),
                        )),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
