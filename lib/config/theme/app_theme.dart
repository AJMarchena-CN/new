import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    // ignore: prefer_const_constructors
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: Color.fromRGBO(172, 200, 17, 1),
      secondary: Colors.white,
      surface: Color(0xFF181818),
      inversePrimary: Color.fromRGBO(0, 96, 156, 1),
    ),
    hintColor: const Color(0xFF181818),
    scaffoldBackgroundColor: Colors.transparent,
    cardColor: const Color(0xFF181818),
    canvasColor: const Color(0xFF181818),
    indicatorColor: const Color(0xFF181818),
    highlightColor: const Color(0xFF181818),
    splashColor: const Color(0xFF181818),
    unselectedWidgetColor: const Color.fromRGBO(172, 200, 17, 1),
    disabledColor: const Color.fromRGBO(172, 200, 17, 1),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color.fromRGBO(172, 200, 17, 1),
      textTheme: ButtonTextTheme.primary,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromRGBO(172, 200, 17, 1),
      foregroundColor: Colors.white,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          const Color.fromRGBO(172, 200, 17, 1),
        ),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(
          const Color.fromRGBO(172, 200, 17, 1),
        ),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF181818),
      selectedItemColor: Color.fromRGBO(0, 96, 156, 1),
      unselectedItemColor: Color.fromRGBO(172, 200, 17, 1),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(172, 200, 17, 1),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(
          const Color.fromRGBO(172, 200, 17, 1),
        ),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.all(const Color.fromRGBO(172, 200, 17, 1)),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.all(const Color.fromRGBO(172, 200, 17, 1)),
    ),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF181818)),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
      bodyMedium: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
      bodySmall: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
      displayLarge: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
      displayMedium: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
      displaySmall: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
      headlineLarge: TextStyle(color: Colors.white),
      headlineMedium: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
      headlineSmall: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
      labelLarge: TextStyle(color: Colors.white),
      labelMedium: TextStyle(color: Colors.white),
      labelSmall: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
      titleMedium: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
      titleSmall: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
    ),
    fontFamily: 'Roboto',
    fontFamilyFallback: const <String>['Roboto'],
    dialogTheme: DialogThemeData(backgroundColor: const Color(0xFF181818)),
  );
}
