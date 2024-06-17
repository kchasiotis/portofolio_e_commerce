import 'package:flutter/material.dart';

class ScreenSmallHeader extends StatelessWidget implements PreferredSizeWidget {
  const ScreenSmallHeader({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Stack(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400))
          ]),
          Positioned(
            left: 8,
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/icons/back_button.png',
                  color: Colors.white,
                )),
          )
        ],
      ),
      backgroundColor: const Color(0xFF1E1F28),
      foregroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
