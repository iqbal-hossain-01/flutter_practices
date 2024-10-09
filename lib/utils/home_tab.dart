import 'package:flutter/material.dart';
import 'package:flutter_practice_by_flutter_docs/pages/detail_page.dart';
import 'package:flutter_practice_by_flutter_docs/utils/news_service.dart';

class HomeTab extends StatefulWidget {

  const HomeTab({
    super.key,
  });

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  late Future<List<dynamic>> news;

  @override
  void initState() {
    super.initState();
    news = NewsService().fetchNews(); // Call the fetchNews method
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: news,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Failed to load news"),
          );
        } else {
          final List<dynamic> articles = snapshot.data!;
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: articles[index]['urlToImage'] != null
                    ? Image.network(articles[index]['urlToImage'])
                    : const Icon(Icons.article),
                title: Text(articles[index]['title']),
                subtitle: Text(articles[index]['description'] ?? ''),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(article: articles[index])
                    ),
                  );
                },
              );
            },
          );
        }
      },
    );
  }
}
