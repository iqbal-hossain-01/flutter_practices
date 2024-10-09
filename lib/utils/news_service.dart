import 'dart:convert';
import 'package:flutter_practice_by_flutter_docs/utils/constants.dart';
import 'package:http/http.dart' as http;

class NewsService {
  final String _apiKey = newsApiKey;

  Future<List<dynamic>> fetchNews() async {
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=$_apiKey"
    ));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data['articles'];
    } else {
      throw Exception("Failed to load news");
    }
  }
}