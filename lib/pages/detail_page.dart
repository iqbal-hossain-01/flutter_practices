import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String items;

  const DetailPage({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail of $items",
        ),
      ),

      // <---- Detail Body Part ---->
      body: Center(
        child: Text(
          "Details of $items",
          style: const TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
