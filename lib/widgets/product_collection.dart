import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'headers.dart';

class ProductCollection extends StatelessWidget {
  const ProductCollection(
      {super.key,
      required this.header,
      required this.underText,
      required this.children});

  final String header;
  final String underText;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Headline(title: header),
                SmallText(text: 'View all', color: appWhite),
              ]),
              SmallText(text: underText),
            ],
          ),
        ),
        const SizedBox(height: 22),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: children,
              )),
        )
      ],
    );
  }
}