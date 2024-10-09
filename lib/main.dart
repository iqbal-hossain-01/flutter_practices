import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Day 1 - Push Git Hub"),
        ),
        body: Center(
          child: Container(
            color: Colors.red,
            child: const Text("First push in github"),
          ),
        ),
      ),
    );
  }
}


/*
this is just day 1 hudai practice
*/
