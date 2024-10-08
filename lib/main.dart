import 'package:flutter/material.dart';
import 'package:flutter_practice_by_flutter_docs/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomeScreen(),

    );
  }
}
