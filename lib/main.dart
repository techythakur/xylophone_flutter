import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void PlaySound(int soundNumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/note$soundNumber.wav"),
    );
  }

  Expanded buildKey({required Color color,required int key}){
     return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          PlaySound(key);
        },
        child: Text(
          "",
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, key: 1),
              buildKey(key: 2, color: Colors.orange),
              buildKey(key: 3, color: Colors.yellow),
              buildKey(key: 4, color: Colors.green),
              buildKey(key: 5, color: Colors.teal),
              buildKey(key: 6, color: Colors.blue),
              buildKey(key: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

