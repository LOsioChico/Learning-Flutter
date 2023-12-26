import 'package:flutter/material.dart';

import 'package:flutter_chat/screens/login_screen.dart';
import 'package:flutter_chat/styles/app_colors.dart';

void main() {
  runApp(const FlutterChat());
}

class FlutterChat extends StatelessWidget {
  const FlutterChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat',
      theme: ThemeData(
        fontFamily: 'Urbanist',
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
      ),
      debugShowCheckedModeBanner: false,
      home: const SafeArea(
        child: LoginScreen(),
      ),
    );
  }
}
