// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'constant.dart';
import 'showToast.dart';

class Item1 extends StatelessWidget{
  const Item1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {showToast(context);},
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/PosterTheRevenant.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
          // gradient: const LinearGradient(
          //   begin: Alignment.bottomCenter,
          //   end: Alignment.topCenter,
          //   stops: [0, 0.2],
          //   colors: [Color.fromRGBO(0, 0, 0, 0), Color.fromRGBO(255, 255, 255, 1)]
          // ),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 2),
          ],
        ),
        child: const Center(
          child: Align(
            alignment: Alignment(-0.8, 0.9),
            child: Text("Movie1", style: ThemeText.mainText,),
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
      onTap: () {showToast(context);},
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/PosterTheRevenant.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
          // gradient: const LinearGradient(
          //   begin: Alignment.bottomCenter,
          //   end: Alignment.topCenter,
          //   stops: [0, 0.2],
          //   colors: [Color.fromRGBO(0, 0, 0, 0), Color.fromRGBO(255, 255, 255, 1)]
          // ),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 2),
          ],
        ),
        child: const Center(
          child: Align(
            alignment: Alignment(-0.8, 0.9),
            child: Text("Movie2", style: ThemeText.mainText,),
          ),
        ),
      ),
    );
  }
}