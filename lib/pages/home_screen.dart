import 'package:flutter/material.dart';
import 'package:flutter_practice_by_flutter_docs/providers/theme_provider.dart';
import 'package:flutter_practice_by_flutter_docs/utils/favorites_tab.dart';
import 'package:flutter_practice_by_flutter_docs/utils/home_tab.dart';
import 'package:flutter_practice_by_flutter_docs/utils/trending_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ThemeProvider themeProvider;

  @override
  void initState() {
    super.initState();
    themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    themeProvider.loadTheme();
  }
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final List<String> items = List.generate(
      20,
      (index) => "Item ${index + 1}",
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Custom App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              //color: Colors.white,
            ),
          ),
          actions: [
            Switch(
              value: themeProvider.isDarkMode,
              onChanged: (value) {
                themeProvider.toggleTheme(value);
              },
            ),
          ],
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
        body: TabBarView(
          children: [
            HomeTab(items: items),
            const TrendingTab(),
            const FavoritesTab(),
          ],
        ),
      ),
    );
  }
}
