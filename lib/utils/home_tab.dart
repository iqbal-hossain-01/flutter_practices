import 'package:flutter/material.dart';

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
        );
      },
    );
  }
}
