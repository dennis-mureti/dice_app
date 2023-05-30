import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
            onPressed: () {
              print('Left button pressed');
            },
            child: Image.asset('images/dice1.png'),
          )),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('right button pressed');
              },
              child: Image(
                width: 200.0,
                image: AssetImage('images/dice1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
