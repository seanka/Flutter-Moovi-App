// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'constant.dart';
import 'movieData.dart';
import 'secondPage.dart';
final movieDataMap = movieDataList.asMap();

class Item extends StatelessWidget{
  final int index;
  const Item({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(index: index,)));},
      child: Stack(
        children: <Widget> [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(movieDataMap[index]!.cover),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 2),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0, 1],
                  colors: [Color.fromRGBO(0, 0, 0, 1.0), Color.fromRGBO(
                      0, 0, 0, 0.0)]
                )
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.75, 0.95),
            child: Text(movieDataMap[index]!.title, style: ThemeText.slightBoldWhiteText,),
          )
        ],
      ),
    );
  }
}