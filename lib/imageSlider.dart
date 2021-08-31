// ignore_for_file: file_names

import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'itemCardSlider.dart';
import 'showToast.dart';

class ImageSlider extends StatefulWidget{
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _currentIndex = 0;
  List cardList = [
    const Item(index: 0),
    const Item(index: 1),
    const Item(index: 2),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for(var i=0; i<list.length; i++){
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          CarouselSlider(
            options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                viewportFraction: 0.65,
                aspectRatio: 1.1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                }
            ),
            items: cardList.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return SizedBox(
                    child: item,
                  );
                },
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(cardList, (index, url) {
              return Container(
                width: _currentIndex == index ? 30 : 10.0,
                height: 10,
                margin: const EdgeInsets.only(top: 20.0, left: 2.0, right: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: _currentIndex == index
                      ? const Color.fromRGBO(232, 176, 20, 50)
                      : const Color.fromRGBO(232, 176, 20, 0.25),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

//unused class
class ItemCard extends StatelessWidget {
  final String title;

  const ItemCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {showToast(context);},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 2),
          ],
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}