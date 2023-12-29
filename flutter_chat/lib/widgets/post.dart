import 'package:flutter/material.dart';
import 'package:flutter_chat/styles/app_colors.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset('assets/temp/user.png', height: 40, width: 40),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sarah Fernandez',
                  style: TextStyle(color: AppColors.font),
                ),
                Text(
                  '1 hrs ago',
                  style: TextStyle(
                    color: AppColors.font.withOpacity(0.7),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 24),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset('assets/temp/post.jpg'),
        ),
        const SizedBox(height: 16),
        const Text(
          'The sun is a daily reminder that we too can rise from the darkness, that we too can shine our own light 🌞💖',
          style: TextStyle(color: AppColors.font),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.font.withOpacity(0.05),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(6),
                elevation: 0,
              ),
              child: const Icon(Icons.favorite_border, color: AppColors.font),
            ),
            const Text(
              '9',
              style: TextStyle(color: AppColors.font),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.font.withOpacity(0.05),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(6),
                elevation: 0,
              ),
              child: const Icon(Icons.message_outlined, color: AppColors.font),
            ),
            const Text(
              '14',
              style: TextStyle(color: AppColors.font),
            ),
          ],
        ),
      ],
    );
  }
}
