// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:moovi/constant.dart';
import 'package:moovi/thirdPage.dart';
import 'movieData.dart';

class SecondPage extends StatelessWidget{
  final movieDataMap = movieDataList.asMap();
  final int index;
  SecondPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, bottom: 55),
            child: Column(
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
                                image: AssetImage(movieDataMap[index]!.cover),
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
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios_rounded, color: Colors.white,),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text('back', style: ThemeText.slightBoldWhiteText,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    children: <Widget> [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(movieDataMap[index]!.title, style: ThemeText.orangeBigText,),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(movieDataMap[index]!.genre, style: ThemeText.slightBoldWhiteText,),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Text(movieDataMap[index]!.description, style: ThemeText.smallDescription,),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Wrap(
                            spacing: 72,
                            children: <Widget> [
                              Text('RATING ', style: ThemeText.slightBoldWhiteText,),
                              Text(movieDataMap[index]!.rating, style: ThemeText.orangeSmallText,),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Wrap(
                            spacing: 50,
                            children: <Widget> [
                              Text('DIRECTOR ', style: ThemeText.slightBoldWhiteText,),
                              Text(movieDataMap[index]!.director, style: ThemeText.orangeSmallText,),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Wrap(
                            spacing: 90,
                            children: <Widget> [
                              Text('CAST ', style: ThemeText.slightBoldWhiteText,),
                              Text(movieDataMap[index]!.cast, style: ThemeText.orangeSmallText,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage(index: index,) ));},
        backgroundColor: Color.fromRGBO(190, 145, 15, 1),
        elevation: 2,
        label: Text('BUY TICKETS', style: ThemeText.FABtext),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}