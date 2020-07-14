import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDiceFace();
                print('LeftDiceNumber = $leftDiceNumber');
              },
              child: Image(
                  image: AssetImage('images/dice$leftDiceNumber.png')),
            ) ,
          ),

          Expanded(
              child: FlatButton(
                  onPressed: (){
                    changeDiceFace();
                    print('RightDiceNumber = $rightDiceNumber');
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'))) ,
        ],
      ),
    );
  }
}
