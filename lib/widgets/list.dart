import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hivecast/classes/style.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: style.black,
            child: Image.asset(
              'asset/Accessibility.png',
              height: 103,
              width: 152,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          // first line //
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '2 min watch',
                style: GoogleFonts.outfit(
                  color: style.gray04,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  letterSpacing: -0.25,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              // text 2 //
              Text(
                'Oct 16, 2024',
                style: GoogleFonts.outfit(
                  color: style.gray04,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  letterSpacing: -0.25,
                ),
              ),
            ],
          ),
          // big text //
          Text(
            'Design Accessibility',
            style: GoogleFonts.outfit(
              color: style.black,
              fontWeight: FontWeight.w700,
              fontSize: 15,
              letterSpacing: -0.25,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          // last line //
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'asset/IXDF.png',
                height: 12,
                width: 12,
              ),
              const SizedBox(
                width: 6,
              ),
              // text 2 //
              Text(
                'IXDF',
                style: GoogleFonts.outfit(
                  color: style.gray04,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  letterSpacing: -0.25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
