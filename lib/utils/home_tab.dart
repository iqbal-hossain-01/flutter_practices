import 'package:flutter/material.dart';
import 'package:flutter_practice_by_flutter_docs/pages/detail_page.dart';

class HomeTab extends StatelessWidget {
  final List<String> items;

  const HomeTab({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.list),
          title: Text(
            items[index],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(items: items[index]),
              ),
            );
          },
        );
      },
    );
  }
}
