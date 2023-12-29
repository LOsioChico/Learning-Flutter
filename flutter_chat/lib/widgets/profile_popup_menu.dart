import 'package:flutter/material.dart';

import 'package:flutter_chat/styles/app_colors.dart';

class ProfilePopupMenu extends StatelessWidget {
  const ProfilePopupMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ProfileMenu>(
      onSelected: (ProfileMenu result) => onSelected(result, context),
      color: AppColors.primaryColor,
      itemBuilder: (context) {
        return [
          const PopupMenuItem(
            value: ProfileMenu.editProfile,
            child: Text(
              'Edit Profile',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          const PopupMenuItem(
            value: ProfileMenu.logout,
            child: Text(
              'Logout',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ];
      },
    );
  }

  onSelected(ProfileMenu result, BuildContext context) {
    switch (result) {
      case ProfileMenu.editProfile:
        Navigator.of(context).pushReplacementNamed('/edit-profile');
        break;
      case ProfileMenu.logout:
        Navigator.of(context).pushReplacementNamed('/login');
        break;
    }
  }
}

enum ProfileMenu { editProfile, logout }
