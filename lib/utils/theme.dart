import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultTheme {
  static const colorScheme = ColorScheme.dark(
    surface: Color(0xFF525E5B),
    onSurface: Color(0xffF1F4F0),
    primary: Color(0xFFBA9364),
    onPrimary: Color(0xffF1F4F0),
    secondary: Color(0xFF7E7A81),
    onSecondary: Color(0xffF1F4F0),
    tertiary: Color(0xFFE5A97D),
    onTertiary: Color(0xffF1F4F0),
  );

  static var textTheme = TextTheme(
    titleLarge:
        GoogleFonts.playfairDisplay(fontSize: 48, fontWeight: FontWeight.bold),
    titleMedium:
        GoogleFonts.playfairDisplay(fontSize: 32, fontWeight: FontWeight.bold),
    titleSmall:
        GoogleFonts.playfairDisplay(fontSize: 24, fontWeight: FontWeight.bold),
    bodyLarge:
        GoogleFonts.sourceSans3(fontSize: 18, fontWeight: FontWeight.bold),
    bodyMedium:
        GoogleFonts.sourceSans3(fontSize: 14, fontWeight: FontWeight.normal),
    bodySmall:
        GoogleFonts.sourceSans3(fontSize: 8, fontWeight: FontWeight.normal),

  );
}

ThemeData getTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: DefaultTheme.colorScheme,
    textTheme: DefaultTheme.textTheme,
  );
}

Color getTextColor() {
  return DefaultTheme.colorScheme.onPrimary;
}