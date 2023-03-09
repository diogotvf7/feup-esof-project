import 'package:flutter/material.dart';

const Color _blue = Color.fromARGB(255, 15, 51, 96);
const Color _midleBlue = Color.fromARGB(255, 22, 33, 62);
const Color _darkBlue = Color.fromARGB(255, 26, 26, 46);
const Color _pink = Color.fromARGB(255, 233, 69, 96);
const Color _white = Color.fromARGB(255, 236, 236, 236);

ThemeData applicationTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
      seedColor: _midleBlue,
      brightness: Brightness.dark,
      background: _darkBlue,
      primary: _pink,
      onPrimary: _white,
      secondary: _blue,
      onSecondary: _white,
      tertiary: _midleBlue,
      onTertiary: _white),
  brightness: Brightness.dark,
  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: Colors.transparent,
  ),
  primaryColor: _pink,
  canvasColor: _darkBlue,
  scaffoldBackgroundColor: _darkBlue,
  cardColor: _blue,
  hintColor: _darkBlue,
  dividerColor: _blue,
  indicatorColor: _white,
  primaryTextTheme: Typography().white,
  iconTheme: const IconThemeData(color: _white),
);