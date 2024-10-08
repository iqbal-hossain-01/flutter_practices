import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // <---- APP BAR ---->
      appBar: AppBar(
        title: const Text(
          //"Scaffold App",
          "Dashboard",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {
              // Search action
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              // Notifications action
            },
            icon: const Icon(Icons.notifications),
          ),
        ],

        // centerTitle: true,
        //backgroundColor: Colors.blueAccent,
        backgroundColor: Colors.teal,
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
