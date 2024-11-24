import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    void playSound(int sound) {
      final player = AudioPlayer();
      player.play(AssetSource("note$sound.wav"));
    }

    List<Color> colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.teal,
      Colors.blue,
      Colors.indigo
    ];

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              for (int i = 0; i < colors.length; i++)
                Expanded(
                    child: TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)),
                            backgroundColor: colors[i]),
                        onPressed: () {
                          playSound(i + 1);
                        },
                        child: Container())),
            ],
          ),
        ),
      ),
    );
  }
}
