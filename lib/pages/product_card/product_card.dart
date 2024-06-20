import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(build) {
    return Stack(children: [
      Column(children: [
        // A stack instead of a container would be cleaner
        Container(
            alignment: Alignment.topLeft,
            width: 148,
            height: 184,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/images/${image}'),
                  fit: BoxFit.cover,
                )),
            child: Padding(
                padding: const EdgeInsets.only(left: 9, top: 8),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16)),
                  width: 40,
                  height: 24,
                  child: Text('-20%',
                      style: TextStyle(color: Colors.white, fontSize: 11)),
                )))
      ]),
      Column(),
      Positioned(
          right: 0,
          top: 164,
          child: Material(
              child: Ink(
            decoration: const ShapeDecoration(
                color: Colors.black, shape: CircleBorder()),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border, color: Colors.white),
              iconSize: 24,
            ),
          ))),
    ]);
  }
}
