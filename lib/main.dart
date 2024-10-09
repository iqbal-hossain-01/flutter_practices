import 'package:flutter/material.dart';
import 'package:flutter_practice_by_flutter_docs/pages/home_screen.dart';
import 'package:flutter_practice_by_flutter_docs/providers/theme_provider.dart';
import 'package:flutter_practice_by_flutter_docs/themes/dark_theme.dart';
import 'package:flutter_practice_by_flutter_docs/themes/light_theme.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeProvider = ThemeProvider();
  await themeProvider.loadTheme(); // Load theme on app start
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Beautiful AppBar with Tabs",

      themeMode: themeProvider.themeMode, // Use theme mode from provider

      theme: lightTheme,
      darkTheme: darkTheme,
      home: const HomeScreen(),
    );
  }
}
