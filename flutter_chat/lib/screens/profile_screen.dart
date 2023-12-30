import 'package:flutter/material.dart';
import 'package:flutter_chat/styles/app_colors.dart';

import 'package:flutter_chat/widgets/custom_app_bar.dart';
import 'package:flutter_chat/widgets/profile_popup_menu.dart';
import 'package:flutter_chat/widgets/profile_stat.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Profile',
        actions: [ProfilePopupMenu()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child:
                    Image.asset('assets/temp/user.png', width: 90, height: 90),
              ),
              const SizedBox(height: 12),
              const Text(
                'Mahdi Mirzadeh',
                style: TextStyle(
                  color: AppColors.font,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(0.05),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(3),
                    child: const Icon(
                      Icons.location_on_outlined,
                      color: AppColors.primaryColor,
                      size: 18,
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    'Madagascar',
                    style: TextStyle(color: AppColors.font, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileStat(title: 'Followers', value: '472'),
                  ProfileStat(title: 'Posts', value: '119'),
                  ProfileStat(title: 'Following', value: '860'),
                ],
              ),
              Divider(
                thickness: 0.8,
                height: 32,
                color: AppColors.font.withOpacity(0.3),
              ),
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/temp/post.jpg'),
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
                    child: const Icon(Icons.favorite_border,
                        color: AppColors.font),
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
                    child: const Icon(Icons.message_outlined,
                        color: AppColors.font),
                  ),
                  const Text(
                    '14',
                    style: TextStyle(color: AppColors.font),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'The sun is a daily reminder that we too can rise from the darkness, that we too can shine our own light 🌞💖',
                style: TextStyle(color: AppColors.font),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
