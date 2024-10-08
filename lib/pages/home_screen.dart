import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Categories"),
          actions: [
            IconButton(
              onPressed: () {
                // Search Action
              },
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                // Vert Action
              },
              icon: const Icon(Icons.more_vert),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Trending",
              ),
              Tab(
                text: "Favorites",
              ),
            ],
          ),
          backgroundColor: Colors.redAccent,
        ),
        drawer: const Drawer(),
        body: TabBarView(
          children: [
            const Center(
              child: Text(
                "Home Content",
              ),
            ),
            const Center(
              child: Text(
                "Trending Content",
              ),
            ),
          
            Scaffold(
                floatingActionButton: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
