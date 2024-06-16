import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    this.showError
  }) : super(key: key);

  final String hintText;
  final String? icon;
  final bool? showError;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 14, bottom: 15, left: 22),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2C36),
        borderRadius: BorderRadius.circular(4),
        border: showError == true
              ? Border.all(color: const Color(0xFFFF2424))
            : null
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: Container(
                  height: 35,
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                    decoration: InputDecoration.collapsed(
                        hintText: hintText,
                        fillColor: Colors.white,
                        hintStyle: const TextStyle(
                            color: Color(0xffABB4BD),
                            fontSize: 14,
                            fontWeight: FontWeight.w300)),
                  ))),
          icon != null ? Image.asset(icon!) : Container(),
          const SizedBox(
            width: 21,
          )
        ],
      ),
    );
  }
}
