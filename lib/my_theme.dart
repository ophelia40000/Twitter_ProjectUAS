import 'package:flutter/material.dart';

import 'utils/colors.dart';

class MyTheme {
  static ThemeData theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: background,
    appBarTheme: const AppBarTheme(
      backgroundColor: background,
      elevation: 0,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: blue,
    ),
  );
}
