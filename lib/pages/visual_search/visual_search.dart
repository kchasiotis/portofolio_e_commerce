// create widget VisualSearch
import 'package:flutter/material.dart';

class VisualSearch extends StatelessWidget {
  const VisualSearch( {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visual Search'),
      ),
      body: const Center(
        child: Text('Visual Search'),
      ),
    );
  }
}