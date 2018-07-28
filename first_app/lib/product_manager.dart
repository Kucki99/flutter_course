import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

/**
 * connecting widget for product_control and products
 * Stateful widgets works with both external data and internal data which can change (state)
 */
class ProductManager extends StatefulWidget {
  final String startingProduct;

  //default value for startingProduct
  ProductManager({this.startingProduct = 'Sweets Tester'});

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager] createState');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('[ProductManager State] initState');
    _products.add(widget.startingProduct);
    //call super.initState() at the end!
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager State] didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Products(_products)
      ],
    );
  }
}
