import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primary = Color(0xffFBBF24);
  static const Color background = Color(0xff0F172A);
  static const Color sidebar = Color(0xff111827);
  static const Color card = Color(0xff1E293B);

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: background,
      primaryColor: primary,
      useMaterial3: true,

      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        brightness: Brightness.dark,
      ),

      textTheme: GoogleFonts.robotoTextTheme(
        ThemeData.dark().textTheme,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: sidebar,
        elevation: 0,
        centerTitle: false,
      ),

      cardTheme: CardThemeData(
        color: card,
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}
