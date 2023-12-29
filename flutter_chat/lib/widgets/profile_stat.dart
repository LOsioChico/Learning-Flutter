import 'package:flutter/material.dart';

import 'package:flutter_chat/styles/app_colors.dart';

class ProfileStat extends StatelessWidget {
  final String title;
  final String value;

  const ProfileStat({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: AppColors.font,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: AppColors.font,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
