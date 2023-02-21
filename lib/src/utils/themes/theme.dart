// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/src/utils/colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: const MaterialColor(0xFF0C0C0C, <int, Color>{
        50: Color(0x1A0C0C0C),
        100: Color(0x330C0C0C),
        200: Color(0x4D0C0C0C),
        300: Color(0x660C0C0C),
        400: Color(0x800C0C0C),
        500: Color(0xFF0C0C0C),
        600: Color(0x990C0C0C),
        700: Color(0x830C0C0C),
        800: Color(0xCC0C0C0C),
        900: Color(0xE60C0C0C),
      }),
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(
            fontSize: 93, fontWeight: FontWeight.w300, letterSpacing: -1.5),
        headline2: GoogleFonts.poppins(
            fontSize: 58, fontWeight: FontWeight.w300, letterSpacing: -0.5),
        headline3:
            GoogleFonts.poppins(fontSize: 47, fontWeight: FontWeight.w400),
        headline4: GoogleFonts.poppins(
            fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        headline5:
            GoogleFonts.poppins(fontSize: 23, fontWeight: FontWeight.w400),
        headline6: GoogleFonts.poppins(
            fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
        subtitle1: GoogleFonts.poppins(
            fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
        subtitle2: GoogleFonts.poppins(
            fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
        bodyText1: GoogleFonts.inter(
            fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
        bodyText2: GoogleFonts.inter(
            fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        button: GoogleFonts.inter(
            fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
        caption: GoogleFonts.inter(
            fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
        overline: GoogleFonts.inter(
            fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
      ));

  static ThemeData darkTheme = ThemeData(
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: MyColors.white,
        selectionColor: Colors.grey.shade700,
        selectionHandleColor: MyColors.white,
      ),

      brightness: Brightness.dark,
      primarySwatch: const MaterialColor(0xFF0C0C0C, <int, Color>{
        50: Color(0x1A0C0C0C),
        100: Color(0x1A0C0C0C),
        200: Color(0x1A0C0C0C),
        300: Color(0x1A0C0C0C),
        400: Color(0x1A0C0C0C),
        500: Color(0xFF0C0C0C),
        600: Color(0x1A0C0C0C),
        700: Color(0x1A0C0C0C),
        800: Color(0x1A0C0C0C),
        900: Color(0x1A0C0C0C),
      }),
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(
            fontSize: 93, fontWeight: FontWeight.w300, letterSpacing: -1.5),
        headline2: GoogleFonts.poppins(
            fontSize: 58, fontWeight: FontWeight.w300, letterSpacing: -0.5),
        headline3:
            GoogleFonts.poppins(fontSize: 47, fontWeight: FontWeight.w400),
        headline4: GoogleFonts.poppins(
            fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        headline5:
            GoogleFonts.poppins(fontSize: 23, fontWeight: FontWeight.w400),
        headline6: GoogleFonts.poppins(
            fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
        subtitle1: GoogleFonts.poppins(
            fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
        subtitle2: GoogleFonts.poppins(
            fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
        bodyText1: GoogleFonts.inter(
            fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
        bodyText2: GoogleFonts.inter(
            fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        button: GoogleFonts.inter(
            fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
        caption: GoogleFonts.inter(
            fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
        overline: GoogleFonts.inter(
            fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
      ));

  static ThemeData fontTheme = ThemeData();
}
