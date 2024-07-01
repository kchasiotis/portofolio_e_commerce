import 'package:flutter/material.dart';

import '../../models/Product.dart';
import '../../widgets/custom_bottom_navigation.dart';
import '../../widgets/product_collection.dart';
import '../product_card/product_card.dart';

// todo refactor
Color appWhite = const Color(0xffF6F6F6);
Color appGray = const Color(0xffABB4BD);
Color primaryRed = const Color(0xffFF3365);

class StreetClothes extends StatelessWidget {
  const StreetClothes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 196,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/street_clothes.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Container(),
              ),
              Positioned(
                bottom: 26,
                left: 16,
                child: Text(
                  'Street Clothes',
                  style: TextStyle(
                    color: appWhite,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(height: 37),
              ProductCollection(
                header: 'Sale',
                underText: 'Super summer sale',
                children: [
                  ProductCard(
                    labelColor: primaryRed,
                    product: Product(
                        image: 'sales-product1.png',
                        label: '-20%',
                        brandName: 'Dorothy Perking',
                        description: 'Evening Dress',
                        price: 15,
                        discountPrice: 12,
                        reviewsNumber: 10),
                  ),
                  const SizedBox(width: 16),
                  ProductCard(
                    labelColor: primaryRed,
                    product: Product(
                        image: 'sales_product2.png',
                        label: '-15%',
                        brandName: 'Sitlly',
                        description: 'T-Shirt Sailing',
                        price: 22,
                        discountPrice: 19,
                        reviewsNumber: 10),
                  ),
                  const SizedBox(width: 16),
                  ProductCard(
                    labelColor: primaryRed,
                    product: Product(
                        image: 'sales_product3.png',
                        label: '-30%',
                        brandName: 'Dorothy Perking',
                        description: 'T-Shirt',
                        price: 55,
                        discountPrice: 39,
                        reviewsNumber: 0),
                  ),
                  const SizedBox(width: 16),
                ],
              )
            ],
          ),
          Column(
            children: [
              const SizedBox(height: 40),
              ProductCollection(
                header: 'New',
                underText: 'You\'ve never seen it before!',
                children: [
                  ProductCard(
                    labelColor: Colors.black,
                    product: Product(
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
                    product: Product(
                        image: 'product2.png',
                        label: 'NEW',
                        brandName: 'Mango Boy',
                        description: 'T-Shirt Sailing',
                        price: 10,
                        reviewsNumber: 0),
                  ),
                  const SizedBox(width: 16),
                  ProductCard(
                    labelColor: Colors.black,
                    product: Product(
                        image: 'product3.png',
                        label: 'NEW',
                        brandName: '&Berries',
                        description: 'T-Shirt',
                        price: 55,
                        discountPrice: 39,
                        reviewsNumber: 0),
                  ),
                  const SizedBox(width: 16),
                ],
              )
            ],
          ), const SizedBox(height: 96,)
        ],
      )),

      bottomNavigationBar: const CustomBottomNavigation(),
      extendBody: true, // very important as noted
    );
  }
}
