import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Xylophone App"),
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildKey(warna: Colors.red, SoundNumber: 1),
            buildKey(warna: Colors.yellow, SoundNumber: 2),
            buildKey(warna: Colors.green, SoundNumber: 3),
            buildKey(warna: Colors.greenAccent, SoundNumber: 4),
            buildKey(warna: Colors.blue, SoundNumber: 5),
            buildKey(warna: Colors.orange, SoundNumber: 6),
            buildKey(warna: Colors.purpleAccent, SoundNumber: 7),
          ],
        )),
      ),
    );
  }

  Expanded buildKey({Color warna = Colors.red, int SoundNumber = 1}) {
    return Expanded(
      flex: 1,
      child: Center(
          child: MaterialButton(
        color: warna,
        minWidth: double.infinity,
        height: double.infinity,
        onPressed: () {
          PlaySound(SoundNumber);
        },
      )),
    );
  }

  void PlaySound(int SoundNumber) {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }
}
