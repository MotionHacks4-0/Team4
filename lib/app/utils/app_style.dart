import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  static Color primaryColor = const Color(0xff589A73);
  static Color primaryColor30 = const Color(0x4D589A73);
  static Color primaryColor10 = const Color(0x1A589A73);
  static Color textColor = const Color(0xff3b3b3b);
  static Color bgColor = const Color(0xffeeedf2);
  static Color whiteColor = const Color(0xFFFFFFFF);
  static Color greyColor1 = const Color(0xFFEFEFEF);
  static Color greyColor2 = const Color(0xFF656565);

  static Color blueColor = const Color(0xff4C76A5);
  static TextStyle textStyle = GoogleFonts.poppins(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle = GoogleFonts.poppins(
    fontSize: 26,
    color: textColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headLineStyle2 = GoogleFonts.poppins(
    fontSize: 21,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle3 = GoogleFonts.poppins(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = GoogleFonts.poppins(
    fontSize: 14,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle5 = GoogleFonts.poppins(
    fontSize: 14,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle6 = GoogleFonts.poppins(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle7 = GoogleFonts.poppins(
    fontSize: 14,
    color: greyColor2,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle8 = GoogleFonts.poppins(
    fontSize: 30,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
}
