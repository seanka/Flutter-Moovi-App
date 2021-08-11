// ignore_for_file: file_names, prefer_const_constructors

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
            padding: EdgeInsets.only(left: 10),
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
                        height: 500,
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
                      child: Text('back', style: ThemeText.mainText,),
                    ),
                  ],
                ),
              ],
            ),
          )
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