import 'package:flutter/material.dart';

import '../../widgets/custom_text_field.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/social_media_buttons.dart';

const textStyle = const TextStyle(fontSize: 14, fontWeight: FontWeight.w200);

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScreenHeader(title: 'Sign Up'),
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
                  child: PrimaryButton(
                text: 'SIGN UP',
                onPressed: null,
              ))
            ],
          ),
          const Expanded(
              child: SocialMediaButtons(
            text: 'Or sign up with social account',
          ))
        ]),
      ),
    );
  }
}

class ScreenHeader extends StatelessWidget implements PreferredSizeWidget {
  const ScreenHeader({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
      backgroundColor: const Color(0xFF1E1F28),
      foregroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
