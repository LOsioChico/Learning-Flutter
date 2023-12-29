import 'package:flutter/material.dart';
import 'package:flutter_chat/widgets/custom_app_bar.dart';

import 'package:flutter_chat/widgets/post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _posts = [];

  @override
  Widget build(BuildContext context) {
    _mockPosts();

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Flutter Chat',
        actions: [
          IconButton(
            icon: const Icon(Icons.location_on_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 20),
          itemCount: _posts.length,
          itemBuilder: (context, index) {
            return const Post();
          },
        ),
      ),
    );
  }

  void _mockPosts() {
    for (int i = 0; i < 100; i++) {
      _posts.add('Post $i');
    }
  }
}
