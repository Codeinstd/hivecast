import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hivecast/classes/style.dart';

class WildCard extends StatelessWidget {
  const WildCard({
    super.key,
    // ignore: non_constant_identifier_names
    this.Image,
    // ignore: non_constant_identifier_names
    required this.MyText,
    // required this.txtColor,
    this.onTap,
  });

  // ignore: prefer_typing_uninitialized_variables, non_constant_identifier_names
  final Image;
  // ignore: non_constant_identifier_names
  final String MyText;
  // ignore: prefer_typing_uninitialized_variables
  // final txtColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // mini-text //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      MyText,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.outfit(
                        fontSize: 10,
                        letterSpacing: -0.15,
                        color: style.gray01,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),

                    // max-text //
                    Text(
                      MyText,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.outfit(
                        fontSize: 12,
                        letterSpacing: -0.15,
                        color: style.gray01,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 4,
                ),
                // image //
                Image.asset(
                  Image,
                  height: 152,
                  width: 103,
                ),

                // row //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      Image,
                      height: 10,
                      width: 10,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      MyText,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.outfit(
                        fontSize: 10,
                        letterSpacing: -0.15,
                        color: style.gray01,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
