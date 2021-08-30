// ignore_for_file: file_names, prefer_initializing_formals
import 'package:flutter/material.dart';
import 'constant.dart';

class ForthPage extends StatelessWidget{
  final List<String> isOn;
  const ForthPage({Key? key, required List<String> isOn}): isOn = isOn, super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 30),
            child: Container(
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios_outlined, color: Colors.white,),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('back', style: ThemeText.slightBoldWhiteText,),
                  )
                ],
              )
            ),
          )
        ),
      ),
    );
  }
}