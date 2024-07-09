import 'package:flutter/cupertino.dart';

import '../theme/colors.dart';

class Headline extends StatelessWidget {
  const Headline({super.key, required this.title, this.color});

  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: color != null ? color : appWhite,
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

// todo: check extending widget
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

TextStyle smallTextStyle = TextStyle(
  fontSize: 11,
  color: appWhite,
);

TextStyle headline2TextStyle = TextStyle(
  fontSize: 24,
  color: appWhite,
  fontWeight: FontWeight.w400,
);
