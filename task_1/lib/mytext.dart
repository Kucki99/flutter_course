import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;

  MyText({this.text = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text),
      ],
    );
  }
}