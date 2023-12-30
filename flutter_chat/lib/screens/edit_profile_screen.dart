import 'package:flutter/material.dart';

import 'package:flutter_chat/styles/app_colors.dart';
import 'package:flutter_chat/widgets/input.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  Genders gender = Genders.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.asset('assets/temp/user.png',
                          width: 120, height: 120),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Icon(
                        Icons.edit,
                        color: AppColors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const Input(label: 'First Name'),
              const SizedBox(height: 16),
              const Input(label: 'Last Name'),
              const SizedBox(height: 16),
              const Input(
                  label: 'Phone Number', keyboardType: TextInputType.phone),
              const SizedBox(height: 16),
              const Input(label: 'Location'),
              const SizedBox(height: 16),
              const Input(label: 'Birthday'),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
                decoration: BoxDecoration(
                  color: AppColors.font.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Gender',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.font),
                    ),
                    Row(
                      children: [
                        buildGenderRadioListTile('Male', Genders.male),
                        buildGenderRadioListTile('Female', Genders.female),
                        buildGenderRadioListTile('Oher', Genders.other),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGenderRadioListTile(String title, Genders value) {
    return Expanded(
      child: RadioListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.font,
          ),
        ),
        value: value,
        groupValue: gender,
        onChanged: (value) {
          setState(() {
            gender = value as Genders;
          });
        },
        visualDensity: const VisualDensity(
          horizontal: VisualDensity.minimumDensity,
          vertical: VisualDensity.minimumDensity,
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}

enum Genders { none, male, female, other }
