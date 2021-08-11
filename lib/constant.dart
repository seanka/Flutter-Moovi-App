import 'package:flutter/material.dart';

abstract class ThemeText{
  static const TextStyle mainText = TextStyle(
    fontFamily: 'Tajawal',
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle subText = TextStyle(
    fontFamily: 'Tajawal',
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle orangeSmallText = TextStyle(
    fontFamily: 'Tajawal',
    color: Color.fromRGBO(255, 240, 0, 100),
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle orangeBigText = TextStyle(
    fontFamily: 'Tajawal',
    color: Color.fromRGBO(255, 240, 0, 100),
    fontSize: 35,
    fontWeight: FontWeight.w900,
  );
}