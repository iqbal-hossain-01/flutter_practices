import 'package:flutter/material.dart';

class MyAnimatedAppBar extends StatelessWidget {
  const MyAnimatedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text(
          "Animated AppBar",
        ),
        background: Image.network(
          'https://example.com/background.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
