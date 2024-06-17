import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        side: WidgetStateProperty.all<BorderSide>(
            const BorderSide(color: Colors.white, width: 1)),
          minimumSize: WidgetStateProperty.all<Size>(const Size(88, 48)),
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
          textStyle: WidgetStateProperty.all<TextStyle>(
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w300))),
      child: Text(text),
    );
  }
}
