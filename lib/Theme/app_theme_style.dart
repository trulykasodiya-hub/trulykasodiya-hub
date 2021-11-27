
import 'package:flutter/material.dart';
import 'package:trushitkasodiya/constances.dart';

final dark = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: darkBgColor,
  canvasColor: const Color(0xFF11111C),
);

final light = ThemeData.light().copyWith(
  canvasColor: whiteColor,
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  primaryColor: blueColor,
  scaffoldBackgroundColor: lightBgColor,

);
