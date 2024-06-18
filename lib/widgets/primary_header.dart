import 'package:flutter/cupertino.dart';

// to be deprecated. Moved to headers
class PrimaryHeader extends StatelessWidget {
  const PrimaryHeader({super.key, required this.title});

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
