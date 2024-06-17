// create widget VisualSearch
import 'package:flutter/material.dart';
import 'package:portofolio_e_commerce/widgets/primary_button.dart';

import '../../widgets/screen_small_header.dart';
import '../../widgets/secondary_button.dart';

class VisualSearch extends StatelessWidget {
  const VisualSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScreenSmallHeader(title: 'Visual Search'),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/visual_search_bg.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Search for an outfit by taking a photo or uploading an image',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xffF6F6F6),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 28),
                Container(
                    width: double.infinity,
                    child:
                        PrimaryButton(text: 'TAKE A PHOTO', onPressed: null)),
                const SizedBox(height: 16),
                Container(
                    width: double.infinity,
                    child: SecondaryButton(
                        text: 'UPLOAD AN IMAGE', onPressed: null)),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
