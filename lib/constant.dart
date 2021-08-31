// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
var backgroundColor = Colors.white;

class ThemeText{
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
    color: Color.fromRGBO(232, 176, 20, 1),
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle orangeBigText = TextStyle(
    fontFamily: 'Tajawal',
    color: Color.fromRGBO(232, 176, 20, 1),
    fontSize: 35,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle whiteBigTextOne = TextStyle(
    fontFamily: 'Tajawal',
    color: Colors.white,
    fontSize: 35,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle smallDescription = TextStyle(
    fontFamily: 'Tajawal',
    color: Color.fromRGBO(240, 240, 240, 75),
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle slightBoldWhiteText = TextStyle(
    fontFamily: 'Tajawal',
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static TextStyle testColor = TextStyle(
    fontFamily: 'Tajawal',
    color: backgroundColor.computeLuminance() > 0.5? Colors.black : Colors.white,
    fontSize: 35,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle FABtext = TextStyle(
    fontFamily: 'Tajawal',
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle orderPage = TextStyle(
    fontFamily: 'Tajawal',
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle orangeOrderPage = TextStyle(
    fontFamily: 'Tajawal',
    color: Color.fromRGBO(232, 176, 20, 1),
    fontSize: 25,
    fontWeight: FontWeight.w700,
  );
}