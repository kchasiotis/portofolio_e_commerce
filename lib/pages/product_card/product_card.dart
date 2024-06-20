import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.image,
      required this.topLabel,
      required this.labelColor});

  final String image;
  final String topLabel;
  final Color labelColor;

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
                      color: labelColor,
                      borderRadius: BorderRadius.circular(16)),
                  width: 40,
                  height: 24,
                  child: Text(topLabel,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 11)),
                )))
      ]),
      const Column(),
      Positioned(
          right: 0,
          top: 164,
          child: Material(
              child: Ink(
            decoration: const ShapeDecoration(
                color: Colors.black, shape: CircleBorder()),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border, color: Colors.white),
              iconSize: 24,
            ),
          ))),
    ]);
  }
}
