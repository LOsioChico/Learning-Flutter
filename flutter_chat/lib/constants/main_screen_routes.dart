import 'package:flutter/material.dart';

import 'package:flutter_chat/models/page_model.dart';
import 'package:flutter_chat/screens/home_screen.dart';
import 'package:flutter_chat/screens/profile_screen.dart';

final List<PageModel> mainScreenRoutes = [
  PageModel(route: '/main', page: const HomeScreen()),
  PageModel(route: '/favorite', page: const Center(child: Text('Favorite'))),
  PageModel(route: '/add-post', page: const Center(child: Text('Add Post'))),
  PageModel(route: '/messages', page: const Center(child: Text('Chat'))),
  PageModel(route: '/profile', page: const ProfileScreen())
];
