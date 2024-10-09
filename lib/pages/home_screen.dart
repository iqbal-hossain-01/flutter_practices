import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Custom App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          elevation: 10, // Adds shadow effect
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.blueAccent,
                ),
                child: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.trending_up,
                  color: Colors.red,
                ),
                child: Text(
                  "Trending",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.purple,
                ),
                child: Text(
                  "Favorites",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),



        // <---- app body ---->
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                "Home Content",
                style: TextStyle(
                  fontSize: 20.0
                ),
              ),
            ),
            Center(
              child: Text(
                "Trending Content",
                style: TextStyle(
                  fontSize: 20.0
                ),
              ),
            ),
            Center(
              child: Text(
                "Favorites Content",
                style: TextStyle(
                  fontSize: 20.0
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
