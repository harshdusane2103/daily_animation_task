import 'package:daily_animation_task/Animated_Text/animatedText.dart';
import 'package:daily_animation_task/Animated_contaniar/filgth.dart';
import 'package:daily_animation_task/darg&drop/darg.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextScreen(),
    );
  }
}
