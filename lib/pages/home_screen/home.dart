import 'package:flutter/material.dart';
import 'package:portofolio_e_commerce/pages/product_card/product_card.dart';

import '../../models/Product.dart';
import '../../widgets/headers.dart';


class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.icon, required this.title});

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/tab_bar/$icon', width: 30, height: 30),
        const SizedBox(height: 2),
        Text(title, style: const TextStyle(fontSize: 11, color: Color(0xffABB4BD)))
      ],
    );
  }
}

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
                  decoration: const BoxDecoration(
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
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LargeHeader(title: 'Fashion\nsale'),
                          const SizedBox(height: 18),
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
                            child: const Text('Check'),
                          )
                        ]),
                  ),
                )
              ])),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 33),
              const Padding(
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
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'You\'ve never seen it before!',
                  style: TextStyle(color: Color(0xffABB4BD)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 22),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ProductCard(
                          labelColor: Colors.black,
                          product: new Product(
                              image: 'product1.png',
                              label: 'NEW',
                              brandName: 'Dorothy Perking',
                              description: 'Evening Dress',
                              price: 15,
                              discountPrice: 12,
                              reviewsNumber: 0),
                        ),
                        const SizedBox(width: 16),
                        ProductCard(
                          labelColor: Colors.black,
                          product: new Product(
                              image: 'product2.png',
                              label: 'NEW',
                              brandName: 'Mango Boy',
                              description: 'T-Shirt Sailing',
                              price: 10,
                              reviewsNumber: 0),
                        ),
                        const SizedBox(width: 16),
                        ProductCard(
                          labelColor: const Color(0xffFF3365),
                          product: new Product(
                              image: 'product3.png',
                              label: '-30%',
                              brandName: '&Berries',
                              description: 'T-Shirt',
                              price: 55,
                              discountPrice: 39,
                              reviewsNumber: 0),
                        ),
                        const SizedBox(width: 16),
                      ],
                    )),
              ),
              const SizedBox(height: 16),
            ],
          )
        ],
      )),
      bottomNavigationBar: SafeArea(
          child: Container(
              height: 60,
              padding: const EdgeInsets.only(top: 8),
              decoration:  BoxDecoration(
                  color: Color(0xff1E1F28),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 16),
                    MenuItem(icon: 'home_inactive.png', title: 'Home'),
                    SizedBox(width: 16),
                    // shop_inactive
                    MenuItem(icon: 'shop_inactive.png', title: 'Shop'),
                    SizedBox(width: 16),
                    // bag_inactive
                    MenuItem(icon: 'bag_inactive.png', title: 'Bag'),
                    SizedBox(width: 16),
                    // favorites_inactive
                    MenuItem(icon: 'favorites_inactive.png', title: 'Favorites'),
                    SizedBox(width: 16),
                    // profile_inactive
                    MenuItem(icon: 'profile_inactive.png', title: 'Profile'),
                    SizedBox(width: 16),
                  ]))),
      extendBody: true, // very important as noted
    );
  }
}
