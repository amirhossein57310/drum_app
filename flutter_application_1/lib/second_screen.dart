import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SafeArea(
        child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/drum.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          _playSound('c1.wav');
                        },
                        child: Text(''),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          _playSound('c2.wav');
                        },
                        child: Text(''),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          _playSound('h1.wav');
                        },
                        child: Text(''),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          _playSound('h2.wav');
                        },
                        child: Text(''),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          _playSound('k1.wav');
                        },
                        child: Text(''),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          _playSound('k2.wav');
                        },
                        child: Text(''),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _playSound(String sound) {
    var player = AudioCache();
    player.play(sound);
  }
}
