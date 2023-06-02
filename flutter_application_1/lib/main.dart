import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_screen.dart';

void main() {
  runApp(DrumApp());
}

class DrumApp extends StatelessWidget {
  const DrumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondScreen(),
    );
  }
}
