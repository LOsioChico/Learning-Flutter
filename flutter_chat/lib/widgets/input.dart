import 'package:flutter/material.dart';

import 'package:flutter_chat/styles/app_colors.dart';

class Input extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;

  const Input({
    super.key,
    required this.label,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: label,
        hintStyle: TextStyle(color: AppColors.font.withOpacity(0.7)),
        label: Text(label),
        labelStyle: const TextStyle(color: AppColors.font),
        filled: true,
        fillColor: AppColors.white.withOpacity(0.5),
        border: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
