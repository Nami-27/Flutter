import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[200],
        appBar : AppBar(title: 
          Center( child : 
          Text("I am Rich"), 
          ) ,
        backgroundColor: Colors.deepPurpleAccent
        ),
        body: Center(child: 
          Image(image: AssetImage('images/diamonds.png'),
          ),
  )),),);
}