import 'package:flutter/material.dart';
import 'package:portofolio_e_commerce/pages/sign_up/sign_up.dart';
import 'package:portofolio_e_commerce/widgets/custom_text_field.dart';
import 'package:portofolio_e_commerce/widgets/primary_button.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const ScreenHeader(
          title: 'Forgot Password',
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 87),
              const Text(
                'Please, enter your email address. You will receive a link to create a new password via email.',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffF6F6F6),
                ),
              ),
              const SizedBox(height: 16),
              const CustomTextField(
                hintText: 'Email',
                icon: 'assets/icons/cancel.png',
                showError: true,
              ),
              const SizedBox(height: 4),
              const Text(
                'Not a valid email address. Should be your@email.com',
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xFFFF2424),
                ),
              ),
              const SizedBox(height: 55),
              Container(
                width: double.infinity,
                child: const PrimaryButton(text: 'SEND', onPressed: null),
              ),
            ],
          ),
        ));
  }
}
