import 'package:flutter/material.dart';
import './mytext.dart';

class MyTextControl extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyTextControlState();
  }
}

class _MyTextControlState extends State<MyTextControl> {
  int counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text('Increment'),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            )),
        MyText(
          text: counter.toString(),
        ),
      ],
    );
  }
}
