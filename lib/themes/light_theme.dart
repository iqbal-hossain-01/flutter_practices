import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.indigo,
  brightness: Brightness.light, // Light mode

  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.indigo,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),

  tabBarTheme: TabBarTheme(
    labelColor: Colors.white,
    unselectedLabelColor: Colors.grey[400],
    indicator: const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.white,
          width: 4,
        ),
      ),
    ),
  ),
);
