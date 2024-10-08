import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // <---- APP BAR ---->
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/profile.jpg'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Iqbal Hossain",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Call action
            },
             icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {
              // VideoCall action
            },
             icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {
              // More options
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
        backgroundColor: Colors.blueAccent,
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
