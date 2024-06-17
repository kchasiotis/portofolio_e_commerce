import 'package:flutter/material.dart';
import 'package:portofolio_e_commerce/widgets/screen_small_header.dart';

class SearchByPhoto extends StatelessWidget {
  const SearchByPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ScreenSmallHeader(
        title: 'Search by taking a Photo',
      ),
      body: Column(
        children: [
          Expanded(child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/search_by_photo.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              // color: Colors.white,
              color: Color(0xff1E1F28),
            ),
            child: Column(
              children: [
                const SizedBox(height: 11),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        iconSize: 24,
                        color: Colors.white,
                        icon: const Icon(Icons.flash_on)),
                    const SizedBox(width: 47),
                    Material(
                      color: Colors.transparent,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xffEF3651),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          iconSize: 24,
                          icon: const Icon(Icons.android),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ),
                    const SizedBox(width: 47),
                    IconButton(
                        onPressed: () {},
                        iconSize: 24,
                        color: Colors.white,
                        icon: const Icon(Icons.sync))
                  ],
                ),
                const SizedBox(height: 9)
              ],
            ),
          )
        ],
      ),
    );
  }
}
