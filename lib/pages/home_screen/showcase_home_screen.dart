import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/screen_header.dart';

class ShowCaseHomeScreen extends StatelessWidget {
  const ShowCaseHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ScreenHeader(
        title: 'Home',
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 87),
            const Text(
              'Welcome to the home screen!',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xffF6F6F6),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'This is the home screen of the app. You can navigate to other screens using the buttons below.',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xffF6F6F6),
              ),
            ),
            const SizedBox(height: 55),
            Container(
              width: double.infinity,
              child: PrimaryButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.pushNamed(context, '/sign_up');
                },
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              child: PrimaryButton(
                text: 'Login',
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              child: PrimaryButton(
                text: 'Forgot Password',
                onPressed: () {
                  Navigator.pushNamed(context, '/forgot_password');
                },
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              child: PrimaryButton(
                text: 'Visual Search',
                onPressed: () {
                  Navigator.pushNamed(context, '/visual_search');
                },
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              child: PrimaryButton(
                text: 'Search by Photo',
                onPressed: () {
                  Navigator.pushNamed(context, '/search_by_photo');
                },
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              child: PrimaryButton(
                text: 'Home',
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              child: PrimaryButton(
                text: 'Street Clothes',
                onPressed: () {
                  Navigator.pushNamed(context, '/street_clothes');
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
