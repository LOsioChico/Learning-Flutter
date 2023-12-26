import 'package:flutter/material.dart';

import 'package:flutter_chat/styles/app_colors.dart';

class AuthInput extends StatefulWidget {
  final String label;
  final bool isPassword;

  const AuthInput({
    required this.label,
    this.isPassword = false,
    super.key,
  });

  @override
  State<AuthInput> createState() => _AuthInputState();
}

class _AuthInputState extends State<AuthInput> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: AppColors.font2),
      cursorColor: AppColors.primaryColor,
      obscureText: widget.isPassword && !showPassword,
      obscuringCharacter: '●',
      decoration: InputDecoration(
        label: Text(widget.label),
        labelStyle: const TextStyle(color: AppColors.font),
        filled: true,
        fillColor: AppColors.white.withOpacity(0.5),
        border: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide.none,
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () => setState(() => showPassword = !showPassword),
                icon: Icon(
                  showPassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: AppColors.black.withOpacity(0.2),
                ),
              )
            : null,
      ),
    );
  }
}
