import 'package:flutter/material.dart';

void main() => runApp(MyApp(),
);

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: SafeArea(
          child: Scaffold(
        backgroundColor : Colors.cyan[600],
        body: Container(
          margin: EdgeInsets.symmetric(vertical:65.0,horizontal: 30.0),
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            // row crossAxisAlignment: CrossAxisAlignment.stretch,
            //verticalDirection: VerticalDirection.down,
            children: <Widget>[
              CircleAvatar(
                radius:60.0,
                backgroundImage: AssetImage('images/Profilepic.jpg')
              ),
              Text("Namitha Manikandan",style: TextStyle(
                color: Colors.white,
                fontSize:28.0,
                fontWeight:FontWeight.bold,
                fontFamily: 'BalooPaaji2'
              )),
              Text("GCEK Student",style: TextStyle(
                color: Colors.white,
                fontSize:20.0,
                fontFamily: 'BalooPaaji2'
              ),),
              Container(
                margin: EdgeInsets.symmetric(vertical:5.0,horizontal:8.0),
                padding: EdgeInsets.symmetric(horizontal:10.0, vertical:10.0),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                        Icons.phone,
                        color: Colors.black87,
                        size: 20.0,
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Text("| +91 9995576084"),
                  ]
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical:20.0,horizontal:8.0),
                padding: EdgeInsets.symmetric(horizontal:10.0, vertical:10.0),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                          Icons.email,
                          color: Colors.black87,
                          size: 20.0,
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Text("| namithamanikandan4@gmail.com"),
                  ]
                ),
              )

            ],
          ),
        ),
        ),
    ),
  ); 
  }
}