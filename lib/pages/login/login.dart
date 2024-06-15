// create stateless widget
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
        appBar: ScreenHeader(title: 'Login'),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(children: <Widget>[
              SizedBox(height: 73),
              CustomTextField(
                  hintText: 'Email',
                  icon: 'assets/icons/outline-check-24px.png'),
              SizedBox(height: 8),
              CustomTextField(hintText: 'Password', icon: null),
              SizedBox(height: 16),
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
              SizedBox(height: 28),
              Row(
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
