
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
ThemeData lightTheme = ThemeData(
  primaryColor: Color(0xFF03AC13),
  secondaryHeaderColor: Color(0xFF3F3E40),
  backgroundColor: Colors.white,
  cardColor: Colors.white,
  hoverColor: Color(0xFF3F3E40),
  focusColor: Color(0xFF3F3E40),
  indicatorColor: Colors.black,
  textTheme: TextTheme(
    headlineMedium:  GoogleFonts.poppins(
        color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),
    headlineSmall: GoogleFonts.poppins(
        color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
    titleMedium: GoogleFonts.poppins(
        color: Color(0xFF03AC13), fontSize: 14, fontWeight: FontWeight.w500),
    labelLarge: GoogleFonts.poppins(
        color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
    titleSmall: GoogleFonts.poppins(
        color: Color(0xFF03AC13), fontSize: 14, fontWeight: FontWeight.w600),
    titleLarge: GoogleFonts.poppins(
        color: Colors.black, fontSize: 20,height: 2, fontWeight: FontWeight.w600),
    bodySmall: GoogleFonts.poppins(
        color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),


    bodyLarge: GoogleFonts.poppins(
        color: Colors.grey,height: 2, fontSize: 14, fontWeight: FontWeight.w500),

  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.cyan,
    textTheme: ButtonTextTheme.primary,
  ),
);

ThemeData darkTheme = ThemeData(
  primaryColor: Color(0xFF03AC13),
  secondaryHeaderColor: Color(0xFF2C2C2C),
  backgroundColor: Color(0xFF1A1A1A),
  cardColor: Color(0xFF2C2C2C),
  hoverColor: Color(0xFF03AC13),
  focusColor: Colors.white,
  indicatorColor: Colors.white,
  bottomNavigationBarTheme:
      BottomNavigationBarThemeData(backgroundColor: Color(0xFF2C2C2C)),
  textTheme: TextTheme(
    headlineMedium:  GoogleFonts.poppins(
        color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
    headlineSmall: GoogleFonts.poppins(
        color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
    titleMedium: GoogleFonts.poppins(
        color: Color(0xFF03AC13), fontSize: 14, fontWeight: FontWeight.w500),
    labelLarge: GoogleFonts.poppins(
        color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
    titleSmall: GoogleFonts.poppins(
        color: Color(0xFF03AC13), fontSize: 14, fontWeight: FontWeight.w600),
    titleLarge: GoogleFonts.poppins(
        color: Colors.white, fontSize: 20,height: 2, fontWeight: FontWeight.w600),
    bodySmall: GoogleFonts.poppins(
        color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),


    bodyLarge: GoogleFonts.poppins(
        color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),

  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.deepPurple,
    textTheme: ButtonTextTheme.primary,
  ),
);
