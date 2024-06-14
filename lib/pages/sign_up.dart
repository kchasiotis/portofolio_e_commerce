import 'package:flutter/material.dart';

const textStyle = const TextStyle(fontSize: 14, fontWeight: FontWeight.w200);

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF1E1F28),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: <Widget>[
          const SizedBox(
            height: 73,
          ),
          const CustomTextField(
              hintText: 'Name', icon: 'assets/icons/outline-check-24px.png'),
          const SizedBox(
            height: 8,
          ),
          const CustomTextField(hintText: 'Email', icon: null),
          const SizedBox(
            height: 8,
          ),
          const CustomTextField(hintText: 'Password', icon: null),
          const SizedBox(
            height: 16,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(
                onPressed: null,
                child: const Text('Already have an account?'),
                style: ButtonStyle(
                    foregroundColor:
                        WidgetStateProperty.all<Color>(const Color(0xFFF6F6F6)),
                    padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.only(right: 4)),
                    textStyle: WidgetStateProperty.all<TextStyle>(
                        const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300)))),
            Image.asset('assets/icons/right-arrow.png'),
          ]),
          const SizedBox(height: 28),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(const Color(0xFFEF3651)),
                    minimumSize:
                        WidgetStateProperty.all<Size>(const Size(88, 48)),
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                    textStyle: WidgetStateProperty.all<TextStyle>(
                        const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300))),
                child: const Text('SIGN UP'),
              ))
            ],
          ),
          const Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Or sign up with social account',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaButton(
                    icon: 'assets/icons/google.png',
                    onPressed: null,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  SocialMediaButton(
                    icon: 'assets/icons/facebook.png',
                    onPressed: null,
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              )
            ],
          ))
        ]),
      ),
    );
  }
}

// create widget
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.icon,
  }) : super(key: key);

  final String hintText;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 14, bottom: 15, left: 22),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2C36),
        borderRadius: BorderRadius.circular(4),
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
              textStyle: WidgetStateProperty.all<TextStyle>(const TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w300))),
          child: Image.asset(
            icon,
            width: 24,
            height: 24,
          ),
        ));
  }
}
