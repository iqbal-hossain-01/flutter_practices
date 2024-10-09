import 'package:flutter/material.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Trending Content",
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
