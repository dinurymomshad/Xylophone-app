import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Expanded buildKey({Color color, int noteNumber}) {
      return Expanded(
        child: FlatButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          color: color,
          onPressed: () {
            final player = AudioCache();
            player.play('note$noteNumber.wav');
          },
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.white, noteNumber: 1),
              buildKey(color: Colors.green, noteNumber: 2),
              buildKey(color: Colors.yellow, noteNumber: 3),
              buildKey(color: Colors.blueAccent, noteNumber: 4),
              buildKey(color: Colors.white, noteNumber: 5),
              buildKey(color: Colors.purple, noteNumber: 6),
              buildKey(color: Colors.blueGrey, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

