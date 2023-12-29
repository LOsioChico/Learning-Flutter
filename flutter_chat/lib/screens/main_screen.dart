import 'package:flutter/material.dart';

import 'package:flutter_chat/constants/pages.dart';
import 'package:flutter_chat/styles/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.white,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined, color: Colors.grey),
            activeIcon: Icon(Icons.home_outlined, color: AppColors.font2),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(Icons.favorite_border_outlined, color: Colors.grey),
            activeIcon:
                Icon(Icons.favorite_border_outlined, color: AppColors.font2),
          ),
          BottomNavigationBarItem(
            label: 'Add',
            icon: Icon(Icons.add, color: Colors.grey),
            activeIcon: Icon(Icons.add, color: AppColors.font2),
          ),
          BottomNavigationBarItem(
            label: 'Messages',
            icon: Icon(Icons.message_outlined, color: Colors.grey),
            activeIcon: Icon(Icons.message_outlined, color: AppColors.font2),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_outline, color: Colors.grey),
            activeIcon: Icon(Icons.person_outline, color: AppColors.font2),
          ),
        ],
      ),
    );
  }
}
