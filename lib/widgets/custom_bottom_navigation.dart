import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {super.key, required this.icon, required this.title, this.active});

  final String icon;
  final String title;
  final bool? active;

  @override
  Widget build(BuildContext context) {
    String assetName = icon;
    assetName += active == true ? '_activated' : '_inactive';
    assetName += '.png';

    Widget TextWidget;
    if (active == true) {
      TextWidget = Text(title,
          style: TextStyle(
              fontSize: 11,
              color: const Color(0xFFEF3651),
              fontWeight: FontWeight.w600));
    } else {
      TextWidget = Text(title,
          style: TextStyle(fontSize: 11, color: const Color(0xffABB4BD)));
    }

    return Column(
      children: [
        Image.asset('assets/tab_bar/$assetName', width: 30, height: 30),
        const SizedBox(height: 2),
        TextWidget
      ],
    );
  }
}

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            height: 60,
            padding: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
                color: Color(0xff1E1F28),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 16),
                  // home
                  MenuItem(
                    icon: 'home',
                    title: 'Home',
                    active: true,
                  ),
                  SizedBox(width: 16),
                  // shop
                  MenuItem(icon: 'shop', title: 'Shop'),
                  SizedBox(width: 16),
                  // bag
                  MenuItem(icon: 'bag', title: 'Bag'),
                  SizedBox(width: 16),
                  // favorites
                  MenuItem(icon: 'favorites', title: 'Favorites'),
                  SizedBox(width: 16),
                  // profile
                  MenuItem(icon: 'profile', title: 'Profile'),
                  SizedBox(width: 16),
                ])));
  }
}
