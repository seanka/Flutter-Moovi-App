// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'constant.dart';

class SmallBackButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent)
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Row(
          children: const [
            Icon(Icons.arrow_back_ios_outlined, color: Colors.white,),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text('back', style: ThemeText.slightBoldWhiteText,),
            )
          ],
        )
    );
  }
}