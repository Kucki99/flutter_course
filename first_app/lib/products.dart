import 'package:flutter/material.dart';

import 'pages/product.dart';

class Products extends StatelessWidget {
  //products is unchangeable (is only set from the outside)
  final List<String> products;

  //default list that can not be changed
  Products([this.products = const []]);

  //Outsource widget creation into methods!
  //listview method for generating one list item
  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductPage(),
                      ),
                    ),
              )
            ],
          )
        ],
      ),
    );
  }

  //Outsource widget creation into methods!
  Widget _buildProductList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
          itemBuilder: _buildProductItem, itemCount: products.length);
    } else {
      productCard = Container();
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products] build');
    return _buildProductList();
  }
}
