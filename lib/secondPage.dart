// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:moovi/constant.dart';
import 'showToast.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, bottom: 75),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                Stack(
                  children: <Widget> [
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Container(
                          width: 500,
                          height: 475,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/images/posterTheLittlePrince.jpg'),
                                fit: BoxFit.cover,
                              )
                          ),
                        )
                    ),
                    TextButton(
                      onPressed: () {Navigator.pop(context);},
                      style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent)
                      ),
                      child: Text('back', style: ThemeText.mainText,),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor "
                      "in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  style: ThemeText.mainText,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      spacing: 72,
                      children: <Widget> [
                        Text('RATING ', style: ThemeText.mainText,),
                        Text('7.5 / 10', style: ThemeText.mainText,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      spacing: 50,
                      children: <Widget> [
                        Text('DIRECTOR ', style: ThemeText.mainText,),
                        Text('7.5 / 10', style: ThemeText.mainText,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      spacing: 90,
                      children: <Widget> [
                        Text('CAST ', style: ThemeText.mainText,),
                        Text('7.5 / 10', style: ThemeText.mainText,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {showToast(context);},
        backgroundColor: Colors.blue,
        elevation: 2,
        label: Text('BUY TICKETS', style: TextStyle(fontSize: 15),),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}