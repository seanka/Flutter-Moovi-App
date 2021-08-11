// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'showToast.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: SingleChildScrollView(

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