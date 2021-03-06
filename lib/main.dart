import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({color, soundNumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: Container(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red.shade800, soundNumber: 1),
              buildKey(color: Colors.blueAccent, soundNumber: 2),
              buildKey(color: Colors.blueGrey.shade800, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.amberAccent, soundNumber: 5),
              buildKey(color: Colors.tealAccent.shade400, soundNumber: 6),
              buildKey(color: Colors.deepPurple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
