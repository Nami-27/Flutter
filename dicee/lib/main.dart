import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          backgroundColor: Colors.purple[400],
          title: Center(child: 
            Text("DICEE")),
        ),
        body: DicePage(),
      )
      ,)
    ;
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDno=2;
  int rightDno=3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row( 
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDno.png'),
              onPressed: (){
                setState(() {
                  leftDno=Random().nextInt(6)+1;
                  rightDno=Random().nextInt(6)+1;
                });
                print('Button1 got pressed');
              },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$rightDno.png'),
                onPressed:(){
                  setState(() {
                    rightDno=Random().nextInt(6)+1;
                    leftDno=Random().nextInt(6)+1;
                  }
                );
                print('Button2 got pressed');
              },
              ),
        ),
        ]
    ),);
  }
}