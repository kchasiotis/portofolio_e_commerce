import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor:
          WidgetStateProperty.all<Color>(const Color(0xFFEF3651)),
          minimumSize: WidgetStateProperty.all<Size>(const Size(88, 48)),
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
          textStyle: WidgetStateProperty.all<TextStyle>(
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w300))),
      child: Text(text),
    );
  }
}
