import 'package:flutter/material.dart';
import 'package:portofolio_e_commerce/widgets/social_media_button.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
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
    );
  }
}
