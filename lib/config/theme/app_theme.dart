import 'package:flutter/material.dart';

const List<Color> listColors = [
  Color(0xFF5C5664),
  Color(0xFFF7D794),
  Color(0xFF55E6C1),
  Color(0xFF00CEC9),
  Color(0xFFADD8E6),
  Color(0xFFAF52DE),
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false});

  ThemeData getColor() {
    final baseColor = listColors[selectedColor];

    return ThemeData(
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      scaffoldBackgroundColor: baseColor, // <- Fondo general de la app
      appBarTheme: AppBarTheme(
        centerTitle: false,
        backgroundColor: baseColor,       // <- Color fijo para el AppBar
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: baseColor,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
      ),
    );
  }

  AppTheme copyWidht({bool? isDarkMode, int? selectedColor}) => AppTheme(
        isDarkMode: isDarkMode ?? this.isDarkMode,
        selectedColor: selectedColor ?? this.selectedColor,
      );
}
