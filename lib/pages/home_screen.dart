import 'package:flutter/material.dart';
import 'package:flutter_practice_by_flutter_docs/pages/my_animated_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MyAnimatedAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Text("Item #$index"),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
