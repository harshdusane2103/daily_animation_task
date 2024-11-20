import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({super.key});

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  Alignment _alignment = Alignment.centerLeft; // Initial alignment

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Animated Text'),
      ),
      body:
      Center(
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'HARSH DUSANE .....',
              textStyle: const TextStyle(
                color: Colors.red,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 200),
            ),
          ],

          totalRepeatCount: 4,
          pause: const Duration(milliseconds: 100),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
      )
      // Stack(
      //   children: [
      //     // Animated alignment for the text widget
      //     AnimatedAlign(
      //       duration: Duration(seconds: 1),
      //       curve: Curves.easeInOut,
      //       alignment: _alignment, // Animate alignment
      //       child: Container(
      //         height: 100,
      //         width: 200,
      //         child: Text(
      //           'HARSH DUSANE',
      //           style: TextStyle(
      //             fontSize: 24,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.black,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      // // Bottom button
      // bottomSheet: Align(
      //   alignment: Alignment.bottomCenter,
      //   child: GestureDetector(
      //     onTap: () {
      //       setState(() {
      //         // Toggle alignment
      //         _alignment = _alignment == Alignment.centerLeft
      //             ? Alignment.topLeft
      //             : Alignment.centerLeft;
      //       });
      //     },
      //     child: CircleAvatar(
      //       radius: 30,
      //       backgroundColor: Colors.red,
      //       child: Icon(
      //         Icons.arrow_upward,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
