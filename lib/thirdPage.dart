// ignore_for_file: file_names, unnecessary_new

import 'package:flutter/material.dart';
import 'package:moovi/FirstContainer.dart';
import 'forthPage.dart';
import 'package:intl/intl.dart';
import 'constant.dart';
var isOn = [];

class SeatButton extends StatefulWidget {
  final String position;
  const SeatButton({Key? key, required this.position}) : super(key: key);

  @override
  _SeatButtonState createState() => _SeatButtonState();
}

class _SeatButtonState extends State<SeatButton> {
  late bool _isPressed = false;
  bool pressAttention = false;

  void _press(){
    setState(() {
      if(!_isPressed) {
        _isPressed = true;
        isOn.add(widget.position);
        pressAttention = true;
      } else if(_isPressed) {
        _isPressed = false;
        isOn.remove(widget.position);
        pressAttention = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: SizedBox(
        height: 100,
        width: 75,
        child: ElevatedButton(
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                backgroundColor: MaterialStateProperty.all<Color>(pressAttention? const Color.fromRGBO(190, 145, 15, 1): Colors.transparent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Color.fromRGBO(232, 176, 20, 1))
                    )
                )
            ),
            onPressed: (){_press();},
            child: Center(
              child: Text(widget.position, style: pressAttention? ThemeText.slightBoldWhiteText: ThemeText.orangeSmallText,),
            )
        ),
      ),
    );
  }
}

// class DateButton extends StatefulWidget {
//   @override
//   _DateButtonState createState() => _DateButtonState();
// }

// class _DateButtonState extends State<DateButton> {
//   late List<bool> isSelected = [false, false, false];
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget> [
//         ToggleButtons(
//           children: <Widget>[
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 border: Border.all(color: Colors.black)
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(15),
//                 child: Text("MON\nJAN 15"),
//               ),
//             ),
//             Text("1"),
//             Text("1"),
//           ],
//           renderBorder: false,
//           isSelected: isSelected,
//           onPressed: (int index) {
//             setState(() {
//               for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
//                 if(buttonIndex == index){
//                   isSelected[buttonIndex] = true;
//                 } else {
//                   isSelected[buttonIndex] = false;
//                 }
//               }
//             });
//           },
//         ),
//       ],
//     );
//   }
// }

class ThirdPage extends StatelessWidget {
  final int index;

  ThirdPage({Key? key, required this.index}) : super(key: key);
  var now = new DateTime.now();
  var date = new DateFormat('MMMMd');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {Navigator.pop(context);},
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
                const SizedBox(height: 15,),
                Text(movieDataMap[index]!.title, style: ThemeText.whiteBigTextOne,),
                Text(date.format(now).toString(), style: ThemeText.orangeBigText,),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('pick your seat', style: ThemeText.smallDescription,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset('assets/images/screen.png'),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SeatButton(position: 'A1'),
                      SeatButton(position: 'A2'),
                      SeatButton(position: 'A3'),
                    ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SeatButton(position: 'A4'),
                      SeatButton(position: 'A5'),
                      SeatButton(position: 'A6'),
                    ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SeatButton(position: 'A7'),
                      SeatButton(position: 'A8'),
                      SeatButton(position: 'A9'),
                    ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SeatButton(position: 'A10'),
                      SeatButton(position: 'A11'),
                      SeatButton(position: 'A12'),
                    ]
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ForthPage()));},
        backgroundColor: const Color.fromRGBO(190, 145, 15, 1),
        elevation: 2,
        label: const Text('CHECKOUT', style: ThemeText.FABtext),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}