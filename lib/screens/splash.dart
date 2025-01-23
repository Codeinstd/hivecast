import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hivecast/classes/style.dart';
import 'package:hivecast/screens/Interest.dart';
import 'package:hivecast/widgets/button.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashActionState();
}

class _SplashActionState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 0,
              right: 0,
              top: 0,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'asset/bg.png',
                  ),

                  // text //
                  Text(
                    'Welcome',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.45,
                      color: style.black,
                    ),
                  ),

                  // text //
                  const Text(
                    'Hivecast',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 46,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.45,
                        color: style.black,
                        fontFamily: 'Outfit'),
                  ),

                  // text //
                  Text(
                    'Learn on everything you need',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.outfit(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -0.45,
                      color: style.gray01,
                    ),
                  ),

                  const SizedBox(
                    height: 0,
                  ),
                ],
              ),
            ),
          )),

          // btn//
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 30),
              child: Column(
                children: [
                  MyButton(
                    iconData: null,
                    buttonText: 'Get Started',
                    bgColor: style.black,
                    txtColor: style.white,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Interest()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(
                    'By continuing you acknowledge that you have read and agree to Hivecast’s Terms of Use and Privacy Policy.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.outfit(
                      fontSize: 11.8,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -0.35,
                      color: style.gray01,
                    ),

                    // TextStyle(
                    //     fontSize: 11.5,
                    //     fontWeight: FontWeight.w300,
                    //     letterSpacing: -0.65,
                    //     color: style.gray01,
                    //     fontFamily: 'https://fonts.google.com/specimen/Outfit'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
