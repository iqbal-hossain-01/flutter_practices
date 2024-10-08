import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // <---- APP BAR ---->
      appBar: AppBar(
        title: const Text(
          "Explore",
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black.withOpacity(0.6),
        elevation: 5.0,
        shadowColor: Colors.grey,
        centerTitle: true,
      ),

      // <---- DRAWER ---->
      drawer: const Drawer(),

      // <---- BODY PART ---->
      body: const Center(
        child: Text("Assalamu Alaikum"),
      ),

      // <---- FlotingActionButton ---->
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Do something
        },
        child: const Icon(Icons.add),
      ),

      // <---- BOTTOM BAR ---->
      bottomNavigationBar: const BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text("Bottom Navigation Bar"),
        ),
      ),
    );
  }
}
