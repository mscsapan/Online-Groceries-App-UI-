import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_groceries_app_ui/constants/constants.dart';
import 'package:online_groceries_app_ui/custom/custom.dart';
import 'package:online_groceries_app_ui/custom/input_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(alignment: Alignment.center, child: topCarrotImage()),
              Text('Registration',
                  style:
                      GoogleFonts.openSans(fontSize: 30.0, letterSpacing: 2.0)),
              Text('Enter your credential to continue',
                  style:
                      GoogleFonts.openSans(fontSize: 16.0, letterSpacing: 1.0)),
              const SizedBox(height: 14.0),
              const InputField(
                heading: 'Your Full Name',
                title: 'Your Full Name',
              ),
              const SizedBox(height: 10.0),
              const InputField(
                heading: 'Email',
                title: 'Your Email',
              ),
              const SizedBox(height: 10.0),
              const InputField(
                heading: 'Password',
                title: 'password',
                obscureText: true,
              ),
              const SizedBox(height: 8.0),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'By continuing you\' re agree to our ',
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.0,
                          color: mBlack,
                          letterSpacing: 1.0)),
                  TextSpan(
                      text: 'Terms of\nServices',
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.0,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          letterSpacing: 1.0)),
                  TextSpan(
                      text: ' and ',
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.0,
                          color: mBlack,
                          letterSpacing: 1.0)),
                  TextSpan(
                      text: 'Privacy Policy',
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.0,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          letterSpacing: 1.0)),
                ]),
              ),
              const SizedBox(height: 30.0),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.12,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF53B175)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)))),
                    child: Text(
                      'Register',
                      style: GoogleFonts.raleway(
                          fontSize: 24.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Don\'t  have an account? ',
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            color: mBlack,
                            letterSpacing: 0.8)),
                    TextSpan(
                        text: 'SignIn',
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            color: Colors.blue,
                            letterSpacing: 1.2,
                            decoration: TextDecoration.underline)),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
