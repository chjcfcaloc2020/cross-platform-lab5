import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

void playSound(int soundNumber) {
  final player = AudioPlayer();
  player.play(AssetSource('note$soundNumber.wav'));
}

Expanded buildWidget(backGround, soundNumber) {
  return Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: backGround,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            onPressed: () {
              playSound(soundNumber);
            }, 
            child: const Text(""),
          )
        );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildWidget(Colors.red, 1),
              buildWidget(Colors.orange, 2),
              buildWidget(Colors.yellow, 3),
              buildWidget(Colors.green.shade400, 4),
              buildWidget(Colors.green, 5),
              buildWidget(Colors.blue, 6),
              buildWidget(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}