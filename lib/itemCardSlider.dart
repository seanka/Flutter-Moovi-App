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
      child: Container(
        height: 200,
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
        child: Center(
          child: Align(
            alignment: const Alignment(-0.8, 0.9),
            child: Text(movieDataMap[index]!.title, style: ThemeText.mainText,),
          ),
        ),
      ),
    );
  }
}