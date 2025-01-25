import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hivecast/classes/style.dart';
// reusable widget //

class ReusableAppBodyWidget extends StatelessWidget {
  const ReusableAppBodyWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24, color: style.black),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.outfit(
                fontSize: 18, color: style.gray05, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
