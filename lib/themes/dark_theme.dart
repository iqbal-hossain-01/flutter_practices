import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark, // Dark mode
  primarySwatch: Colors.indigo,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),
  tabBarTheme: TabBarTheme(
    labelColor: Colors.indigoAccent,
    unselectedLabelColor: Colors.grey[400],
    indicator: const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.indigoAccent,
          width: 4,
        ),
      ),
    ),
  ),
);
