import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  //products is unchangeable (is only set from the outside)
  final List<String> products;

  //default list that can not be changed
  Products([this.products = const []]);

  @override
  Widget build(BuildContext context) {
    print('[Products] build');
    return Column(
      children: products
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
