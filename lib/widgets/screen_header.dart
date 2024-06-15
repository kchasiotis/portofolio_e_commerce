import 'package:flutter/material.dart';

class ScreenHeader extends StatelessWidget implements PreferredSizeWidget {
  const ScreenHeader({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
      backgroundColor: const Color(0xFF1E1F28),
      foregroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}