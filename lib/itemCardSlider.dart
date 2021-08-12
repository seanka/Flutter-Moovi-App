// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'constant.dart';
import 'showToast.dart';
import 'movieData.dart';
import 'secondPage.dart';
final movieDataMap = movieDataList.asMap();

class Item1 extends StatelessWidget{
  const Item1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(index: 0)));},
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(movieDataMap[0]!.cover),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 2),
          ],
        ),
        child: Center(
          child: Align(
            alignment: const Alignment(-0.8, 0.9),
            child: Text(movieDataMap[0]!.title, style: ThemeText.mainText,),
          ),
        ),
      ),
    );
  }
}

class Item2 extends StatelessWidget{
  const Item2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(index: 1)));},
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(movieDataMap[1]!.cover),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 2),
          ],
        ),
        child: Center(
          child: Align(
            alignment: const Alignment(-0.8, 0.9),
            child: Text(movieDataMap[1]!.title, style: ThemeText.mainText,),
          ),
        ),
      ),
    );
  }
}