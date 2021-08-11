import 'package:flutter/material.dart';
import 'package:moovi/FirstContainer.dart';
import 'constant.dart';
import 'imageSlider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie',
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FirstContainer(),
              const Padding(
                padding: EdgeInsets.only(top: 25, left: 20),
                child: Text(
                  'Playing this week',
                  style: ThemeText.subText,
                ),
              ),
              ImageSlider(),
            ],
          ),
        ),
      ),
    );
  }
}

