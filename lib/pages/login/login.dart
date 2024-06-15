import 'package:flutter/material.dart';

import '../../widgets/custom_text_field.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/screen_header.dart';
import '../../widgets/social_media_buttons.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const ScreenHeader(title: 'Login'),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(children: <Widget>[
              const SizedBox(height: 73),
              const CustomTextField(
                  hintText: 'Email',
                  icon: 'assets/icons/outline-check-24px.png'),
              const SizedBox(height: 8),
              const CustomTextField(hintText: 'Password', icon: null),
              const SizedBox(height: 16),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                TextButton(
                    onPressed: null,
                    child: const Text('Forgot your password?'),
                    style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all<Color>(
                            const Color(0xFFF6F6F6)),
                        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.only(right: 4)),
                        textStyle: WidgetStateProperty.all<TextStyle>(
                            const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300)))),
                Image.asset('assets/icons/right-arrow.png'),
              ]),
              const SizedBox(height: 28),
              const Row(
                children: [
                  Expanded(
                      child: PrimaryButton(
                    text: 'LOGIN',
                    onPressed: null,
                  ))
                ],
              ),
              const Expanded(
                  child: SocialMediaButtons(
                text: 'Or login with social account',
              ))
            ])));
  }
}
