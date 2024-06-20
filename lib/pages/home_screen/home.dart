import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portofolio_e_commerce/pages/product_card/product_card.dart';

import '../../widgets/headers.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Home'),//have a look here https://api.flutter.dev/flutter/services/SystemUiOverlayStyle-class.html
      ),*/
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
              height: 536, // todo: size dynamically
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/big_banner.png'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  bottom: 32,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LargeHeader(title: 'Fashion\nsale'),
                          SizedBox(height: 18),
                          ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(
                                    const Color(0xFFEF3651)),
                                minimumSize: WidgetStateProperty.all<Size>(
                                    const Size(160, 48)),
                                foregroundColor: WidgetStateProperty.all<Color>(
                                    Colors.white),
                                textStyle: WidgetStateProperty.all<TextStyle>(
                                    const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300))),
                            child: Text('Check'),
                          )
                        ]),
                  ),
                )
              ])),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 33),
              Padding(
                padding: EdgeInsets.only(left: 14, right: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimaryHeader(title: 'New'),
                    Text('View all',
                        style: TextStyle(
                            color: Color(0xffF6F6F6),
                            fontSize: 11,
                            fontWeight: FontWeight.w300))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'You\'ve never seen it before!',
                  style: TextStyle(color: Color(0xffABB4BD)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, top: 22),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ProductCard(image: 'product1.png', topLabel: 'NEW', labelColor: Colors.black),
                        SizedBox(width: 16),
                      ],
                    )),
              ),
              SizedBox(height: 16),
            ],
          )
        ],
      )),
    );
  }
}
