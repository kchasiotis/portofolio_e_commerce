import 'package:flutter/cupertino.dart';

Color appWhite = const Color(0xffF6F6F6);
Color appGray = const Color(0xffABB4BD);
Color primaryRed = const Color(0xffFF3365);

class Headline extends StatelessWidget {
  const Headline({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: Color(0xffF6F6F6),
        ));
  }
}

class LargeHeader extends StatelessWidget {
  const LargeHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: Color(0xffF6F6F6),
          height: 1.1,
        ));
  }
}

class SmallText extends StatelessWidget {
  const SmallText({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: 11,
          color: color != null ? color : appGray,
        ));
  }
}
