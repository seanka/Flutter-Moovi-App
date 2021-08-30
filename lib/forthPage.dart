// ignore_for_file: file_names, prefer_initializing_formals
import 'package:flutter/material.dart';
import 'constant.dart';
import 'backButton.dart';

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
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                child: SmallBackButton(),
              ),
            )
        ),
      ),
    );
  }
}