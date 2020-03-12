import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  Expanded myButton(int number,Color color){
    return Expanded(child: FlatButton(
        color: color,
        onPressed: () {
          final audioPlayer = AudioCache();
          audioPlayer.play("audios/note$number.wav");
        }
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              myButton(1, Colors.red),
              myButton(2, Colors.orange),
              myButton(2, Colors.yellow),
              myButton(4, Colors.green),
              myButton(5, Colors.teal),
              myButton(6, Colors.blue),
              myButton(7, Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}


