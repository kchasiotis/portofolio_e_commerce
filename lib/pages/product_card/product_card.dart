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
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                ))),

        const SizedBox(height: 7),
        const Row(children: [
          Icon(Icons.star, color: Colors.yellow, size: 16),
          Icon(Icons.star, color: Colors.yellow, size: 16),
          Icon(Icons.star, color: Colors.yellow, size: 16),
          Icon(Icons.star, color: Colors.yellow, size: 16),
          Icon(Icons.star, color: Colors.yellow, size: 16),
          SizedBox(width: 4),
          Text('(10)',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: Color(0xffABB4BD)))
        ]),
        const SizedBox(height: 6),
        const Text('Dorothy Perkins',
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w300,
                color: Color(0xffABB4BD))),
        const SizedBox(height: 5),
        const Text('Evening Dress',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xffF6F6F6))),
        const SizedBox(height: 5),
        Row(children: [
          const Text('15\$',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Color(0xffABB4BD),
                  color: Color(0xffABB4BD))),
          SizedBox(width: 4),
          const Text('12\$',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffFF3E3E)))

        ]),
      ]),
      Positioned(
          right: 0,
          top: 164,
          child: Material(
              color: Colors.transparent,
              child: Ink(
                decoration: const ShapeDecoration(
                    color: Color(0xff2A2C36), shape: CircleBorder()),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border, color: Color(0xffABB4BD)),
                  iconSize: 18,
                ),
              ))),
    ]);
  }
}
