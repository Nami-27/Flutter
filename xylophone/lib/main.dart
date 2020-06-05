import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

void main() => runApp(MyApp());
int sno;
void playSound(sno) {
  final player = AudioCache();
  player.play('note$sno.wav');
  print('Note$sno');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: GradientAppBar(
            title: Center(child: Text("Play your Music ")),
            backgroundColorStart: Colors.red,
            backgroundColorEnd: Colors.black,
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      color: Colors.purple,
                      onPressed: () {
                        playSound(1);
                      },
                      child: Text(' '),
                      ),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.indigo,
                      onPressed: () {
                        playSound(2);
                      },
                      child: Text(' ')
                      ),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        playSound(3);
                      },
                      child: Text(' ')
                      ),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        playSound(4);
                      },
                      child: Text('  ')
                      ),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.yellow,
                      onPressed: () {
                        playSound(5);
                      },
                      child: Text('  ')
                      ),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.orange,
                      onPressed: () {
                        playSound(6);
                      },
                      child: Text('  ')
                      ),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.red,
                      onPressed: () {
                        playSound(7);
                      },
                      child: Text('  ')
                      ),
                ),
              ],
            ),
          )),
    );
  }
}
