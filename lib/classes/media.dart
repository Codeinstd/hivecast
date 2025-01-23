import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hivecast/classes/style.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData!.size.height;
    screenWidth = _mediaQueryData!.size.width;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
  }

  // fonts types //

  // size 8 -------- regular //
  p8regB(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.text1,
        fontWeight: FontWeight.w300,
        fontSize: 8,
        height: 1.5,
        letterSpacing: -0.45,
      ),
    );
  }

  p8regR(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.lightRed,
        fontWeight: FontWeight.w300,
        fontSize: 8,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  p8regW(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.white,
        fontWeight: FontWeight.w300,
        fontSize: 8,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  // size 8 -------- regular //
  p8medB(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.text1,
        fontWeight: FontWeight.w600,
        fontSize: 8,
        height: 1.5,
        letterSpacing: -0.45,
      ),
    );
  }

  p8medR(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.lightRed,
        fontWeight: FontWeight.w600,
        fontSize: 8,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  p8medW(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.white,
        fontWeight: FontWeight.w600,
        fontSize: 8,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  // size 10 -------- regular //
  p10regB(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.text1,
        fontWeight: FontWeight.w300,
        fontSize: 10,
        height: 1.5,
        letterSpacing: -0.45,
      ),
    );
  }

  p10regR(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.lightRed,
        fontWeight: FontWeight.w300,
        fontSize: 10,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  p10regW(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.white,
        fontWeight: FontWeight.w300,
        fontSize: 10,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  // size 10 -------- regular //
  p10medB(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.text1,
        fontWeight: FontWeight.w600,
        fontSize: 10,
        height: 1.5,
        letterSpacing: -0.45,
      ),
    );
  }

  p10medR(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.lightRed,
        fontWeight: FontWeight.w600,
        fontSize: 10,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  p10medW(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.white,
        fontWeight: FontWeight.w600,
        fontSize: 10,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  // size 12 --------  regular //
  p12regB(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.text1,
        fontWeight: FontWeight.w300,
        fontSize: 12,
        height: 1.5,
        letterSpacing: -0.45,
      ),
    );
  }

  p12regR(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.lightRed,
        fontWeight: FontWeight.w300,
        fontSize: 12,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  p12regW(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.white,
        fontWeight: FontWeight.w300,
        fontSize: 12,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  // size 12 -------- medium //
  p12medB(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.text1,
        fontWeight: FontWeight.w600,
        fontSize: 12,
        height: 1.5,
        letterSpacing: -0.45,
      ),
    );
  }

  p12medR(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.lightRed,
        fontWeight: FontWeight.w600,
        fontSize: 12,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  p12medW(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.white,
        fontWeight: FontWeight.w600,
        fontSize: 12,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  // size 14 --------  regular //
  p14regB(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.text1,
        fontWeight: FontWeight.w300,
        fontSize: 14,
        height: 1.5,
        letterSpacing: -0.45,
      ),
    );
  }

  p14regR(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.lightRed,
        fontWeight: FontWeight.w300,
        fontSize: 14,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  p14regW(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.white,
        fontWeight: FontWeight.w300,
        fontSize: 14,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  // size 14 -------- medium //
  p14medB(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.text1,
        fontWeight: FontWeight.w600,
        fontSize: 14,
        height: 1.5,
        letterSpacing: -0.45,
      ),
    );
  }

  p14medR(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.lightRed,
        fontWeight: FontWeight.w600,
        fontSize: 14,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  p14medW(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.white,
        fontWeight: FontWeight.w600,
        fontSize: 14,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  // size 16 --------  regular //
  p16regB(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.text1,
        fontWeight: FontWeight.w300,
        fontSize: 16,
        height: 1.5,
        letterSpacing: -0.45,
      ),
    );
  }

  p16regR(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.lightRed,
        fontWeight: FontWeight.w300,
        fontSize: 16,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  p16regW(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.white,
        fontWeight: FontWeight.w300,
        fontSize: 16,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  // size 16 -------- medium //
  p16medB(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.text1,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        height: 1.5,
        letterSpacing: -0.45,
      ),
    );
  }

  p16medR(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.lightRed,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  p16medW(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.white,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  // size 24 --------  regular //
  p24regB(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.text1,
        fontWeight: FontWeight.w300,
        fontSize: 24,
        height: 1.5,
        letterSpacing: -0.45,
      ),
    );
  }

  p24regR(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.lightRed,
        fontWeight: FontWeight.w300,
        fontSize: 24,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  p24regW(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.white,
        fontWeight: FontWeight.w300,
        fontSize: 24,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  // size 12 -------- medium //
  p24medB(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.text1,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        height: 1.5,
        letterSpacing: -0.45,
      ),
    );
  }

  p24medR(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.lightRed,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  p24medW(txt, sc) {
    return Text(
      txt,
      style: GoogleFonts.outfit(
        color: style.white,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        height: 1.5,
        letterSpacing: -0.25,
      ),
    );
  }

  // widget //
  // Widget boxl(ctx, txt) {
  //   return SizedBox(
  //       child: Padding(
  //           padding: const EdgeInsets.all(0.0),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Image.asset(
  //                 'asset/AE.png',
  //                 width: 152,
  //                 height: 103,
  //               ),
  //               const SizedBox(
  //                 height: 6,
  //               ),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                 children: [
  //                   SizeConfig().p10regB('2 min watch', 10),
  //                   const SizedBox(
  //                     width: 2,
  //                   ),
  //                   SizeConfig().p10regB('Oct 16, 2024', 10),
  //                 ],
  //               ),
  //               const SizedBox(
  //                 height: 2,
  //               ),
  //               SizeConfig().p14medB('Learn after-effect', 14),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                 children: [
  //                   Image.asset(
  //                     'asset/a-e.png',
  //                     height: 10,
  //                     width: 10,
  //                   ),
  //                   const SizedBox(
  //                     width: 2,
  //                   ),
  //                   SizeConfig().p10regB('Adobe After Effect', 10),
  //                 ],
  //               ),
  //             ],
  //           )));
  // }
}
