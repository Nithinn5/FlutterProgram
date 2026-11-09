import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedWidget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(animatedTexts: [TypewriterAnimatedText('Nithin',textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            speed: Duration(milliseconds: 100)
            )],
              pause: Duration(milliseconds: 200),
              totalRepeatCount: 4,
              stopPauseOnTap: true,
              displayFullTextOnTap: true,
            ),
            AnimatedTextKit
              (animatedTexts: [RotateAnimatedText('Hello User',textStyle:
            TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            )],
            ),
            AnimatedTextKit(animatedTexts: [WavyAnimatedText('Nithin',textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),WavyAnimatedText('Pavan',textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))],
              pause: Duration(milliseconds: 200),
              totalRepeatCount: 4,
              stopPauseOnTap: true,
              displayFullTextOnTap: true,
            )

          ],
        ),
      ),
    );
  }
}
