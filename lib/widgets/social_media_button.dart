import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final String icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 98,
        height: 64,
        child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
              shape: WidgetStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18))),
              backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
              foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
              padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.only(top: 20, bottom: 20)),
              textStyle: WidgetStateProperty.all<TextStyle>(
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w300))),
          child: Image.asset(
            icon,
            width: 24,
            height: 24,
          ),
        ));
  }
}
