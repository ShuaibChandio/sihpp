import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.red,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.red,
          side: BorderSide(color: Colors.red,width: 0.5),
          disabledForegroundColor: Colors.red.withOpacity(0.40),
        textStyle: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold,color: Colors.red),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: outlineInputBorder,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,
      errorBorder: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      disabledBorder: outlineInputBorder,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 16,
            ),
            backgroundColor: Colors.green,
            disabledBackgroundColor: Colors.grey)));


OutlineInputBorder outlineInputBorder =OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.grey
  )
);