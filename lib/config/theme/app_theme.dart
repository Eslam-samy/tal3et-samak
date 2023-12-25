import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xff248CA8);
const seconderyColor = Color(0xff2F373E);
const secondaryBackground = Color(0xffF3FAF9);
const textColor = Color(0xff08322C);
const orangeColor = Color(0xffFF8A00);
const yellowColor = Color(0xffFFC700);
const grayColor = Color(0xffC3CBD2);

final appTheme = ThemeData(
  primaryColor: primaryColor,
  useMaterial3: true,
  scaffoldBackgroundColor: primaryColor,
  textTheme: TextTheme(
      headlineLarge: GoogleFonts.openSans(color: textColor, fontSize: 35),
      headlineMedium: GoogleFonts.openSans(color: textColor, fontSize: 25),
      bodyMedium: GoogleFonts.openSans(color: textColor, fontSize: 16),
      displayMedium: GoogleFonts.openSans(
          color: textColor, fontSize: 16, fontWeight: FontWeight.w500),
      bodySmall: GoogleFonts.openSans(color: textColor, fontSize: 14)),
);
