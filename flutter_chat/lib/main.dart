import 'package:flutter/material.dart';
import 'package:flutter_chat/screens/edit_profile_screen.dart';

import 'package:flutter_chat/screens/login_screen.dart';
import 'package:flutter_chat/screens/main_screen.dart';
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
      debugShowCheckedModeBanner: false,
      routes: {
        '/main': (context) => const MainScreen(),
        '/login': (context) => const LoginScreen(),
        '/edit-profile': (context) => const EditProfileScreen(),
      },
      initialRoute: '/login',
      theme: ThemeData(
        fontFamily: 'Urbanist',
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        platform: TargetPlatform.iOS,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.font,
          shadowColor: AppColors.background,
          centerTitle: false,
          elevation: 2,
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: AppColors.font,
          ),
          actionsIconTheme: IconThemeData(
            color: AppColors.font,
            size: 28,
          ),
        ),
      ),
    );
  }
}
