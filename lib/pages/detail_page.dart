import 'package:flutter/material.dart';
import 'package:flutter_practice_by_flutter_docs/helper_functions/helper_functions.dart';

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> article;

  const DetailPage({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail of News"),
        actions: [
          IconButton(
            onPressed: () {
              try {
                shareArticle(article['title'], article['url']);
              } catch (error) {
                print("Error sharing article: $error");
              }
            },
            icon: const Icon(Icons.share),
          ),
        ],
      ),

      // <---- Detail Body Part ---->
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (article['urlToImage'] != null)
                //Image.network(article['urlToImage']),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    article['urlToImage'],
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                ),
              const SizedBox(height: 16),
              Text(
                article['title'],
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Published on: ${article['publishedAt'] ?? 'Unknown'}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Author: ${article['author'] ?? 'Unknown'}",
                style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                article['description'] ?? 'No description available.',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Open the article URL in a web browser
                  launchURL(article['url']);
                },
                child: const Text("Read Full Article"),
              ),
              const Text(
                "Related Articles",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
