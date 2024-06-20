import 'package:flutter/material.dart';
import 'package:portofolio_e_commerce/models/Product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key, required this.product, required this.labelColor});

  final Product product;
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
                  image: AssetImage('assets/images/${product.image}'),
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
                  child: Text(product.label,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 11)),
                ))),

        const SizedBox(height: 7),
        Row(children: [
          const Icon(Icons.star, color: Colors.yellow, size: 16),
          const Icon(Icons.star, color: Colors.yellow, size: 16),
          const Icon(Icons.star, color: Colors.yellow, size: 16),
          const Icon(Icons.star, color: Colors.yellow, size: 16),
          const Icon(Icons.star, color: Colors.yellow, size: 16),
          const SizedBox(width: 4),
          Text('(${product.reviewsNumber})',
              style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: Color(0xffABB4BD)))
        ]),
        const SizedBox(height: 6),
        Text(product.brandName,
            style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w300,
                color: Color(0xffABB4BD))),
        const SizedBox(height: 5),
        Text(product.description,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xffF6F6F6))),
        const SizedBox(height: 5),
        ProductPrice(price: product.price, discountPrice: product.discountPrice)
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
                  icon: const Icon(Icons.favorite_border,
                      color: Color(0xffABB4BD)),
                  iconSize: 18,
                ),
              ))),
    ]);
  }
}

class ProductPrice extends StatelessWidget {
  const ProductPrice(
      {super.key, required this.price, required this.discountPrice});

  final int price;
  final int? discountPrice;

  @override
  Widget build(BuildContext context) {
    if (discountPrice == null) {
      return Text('${price}\$',
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xffABB4BD)));
    } else {
      return Row(children: [
        Text('${discountPrice}\$',
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.lineThrough,
                decorationColor: Color(0xffABB4BD),
                color: Color(0xffABB4BD))),
        const SizedBox(width: 4),
        Text('${price}\$',
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xffFF3E3E)))
      ]);
    }
  }
}
