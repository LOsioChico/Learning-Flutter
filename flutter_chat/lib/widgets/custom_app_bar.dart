import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Text(title),
      ),
      actions: actions?.map((action) {
        return Padding(
          padding: const EdgeInsets.only(right: 12),
          child: action,
        );
      }).toList(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
