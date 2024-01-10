import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: const Color(0xFF00BF6D),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: Color(0xFF1D1D35)),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: const Color(0xFF1D1D35)),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF00BF6D),
      secondary: Color(0xFFFE9901),
      error: Color(0xFFF03738),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: const Color(0xFF1D1D35).withOpacity(0.7),
      unselectedItemColor: const Color(0xFF1D1D35).withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: Color(0xFF00BF6D)),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkTheme(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: const Color(0xFF00BF6D),
    scaffoldBackgroundColor: const Color(0xFF1D1D35),
    appBarTheme: appBarTheme.copyWith(backgroundColor: const Color(0xFF1D1D35)),
    iconTheme: const IconThemeData(color: Color(0xFFF5FCF9)),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: const Color(0xFFF5FCF9)),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: const Color(0xFF00BF6D),
      secondary: const Color(0xFFFE9901),
      error: const Color(0xFFF03738),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: const Color(0xFF1D1D35),
      selectedItemColor: Colors.white70,
      unselectedItemColor: const Color(0xFFF5FCF9).withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: Color(0xFF00BF6D)),
      showUnselectedLabels: true,
    ),
  );
}
