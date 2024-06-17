// create stateless widget search_by_photo
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
          Container(
            decoration: const BoxDecoration(
              color: Color(0xff1E1F28),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: null,
                    iconSize: 24,
                    icon: const Icon(Icons.flash_on)),
                SizedBox(width: 47),
                Ink(
                    decoration: const ShapeDecoration(
                      color: Color(0xffEF3651),
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                        onPressed: null,
                        iconSize: 24,
                        icon: const Icon(Icons.camera_alt))),
                SizedBox(width: 47),
                IconButton(
                    onPressed: null, iconSize: 24, icon: const Icon(Icons.sync))
              ],
            ),
          )
        ],
      ),
    );
  }
}
