// ignore_for_file: file_names, prefer_initializing_formals
import 'package:flutter/material.dart';
import 'package:moovi/FirstContainer.dart';
import 'constant.dart';
import 'showToast.dart';

class ForthPage extends StatelessWidget{
  final List<String> isOn;
  final int index;
  const ForthPage({Key? key, required List<String> isOn, required this.index}): isOn = isOn, super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              TextButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.transparent)
                  ),
                  onPressed: () {
                    isOn.clear();
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
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Order Details', style: ThemeText.whiteBigTextOne,),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: <Widget> [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(image: AssetImage(movieDataMap[index]!.cover), fit: BoxFit.cover),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.7,
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    stops: [0,0.5],
                                    colors: [Colors.transparent, Colors.black],
                                  )
                              ),
                            ),
                          ),
                          Positioned(
                            top: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget> [
                                Text(movieDataMap[index]!.title, style: ThemeText.orderPage,),
                                Row(
                                    children: [
                                      const Text('Seat no: ', style: ThemeText.orderPage,),
                                      const SizedBox(height: 30),
                                      Text(isOn.toString(), style: ThemeText.orderPage,),
                                    ]
                                ),
                                const SizedBox(height: 30,),
                                Text('Total price: ' + (isOn.length * 30000).toString(), style: ThemeText.orangeOrderPage,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {showToast(context);},
        label: const Text('PAY NOW', style: ThemeText.FABtext,),
        backgroundColor: const Color.fromRGBO(190, 145, 15, 1),
        elevation: 2,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}