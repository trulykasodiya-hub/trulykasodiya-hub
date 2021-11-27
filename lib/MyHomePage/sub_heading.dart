import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../constances.dart';
import '../responsive.dart';

Widget subHeading (context) {
  return DefaultTextStyle(
    style: TextStyle(
      fontSize:  Responsive.isMobile(context) ? 16 : 32.0,
      color: customDarkPurpleColor,
      fontWeight: FontWeight.bold,
    ),
    child: AnimatedTextKit(
      repeatForever: true,

      animatedTexts: [
        TypewriterAnimatedText('Mobile Application Developer'),
        TypewriterAnimatedText('Website Developer'),
        TypewriterAnimatedText('UI/UX Designer'),
        TypewriterAnimatedText('Web App Developer'),
      ],
      onTap: () {
        print("Tap Event");
      },
    ),
  );
}
