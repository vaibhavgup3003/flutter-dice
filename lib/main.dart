import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          elevation: 50,
          shadowColor: Colors.orangeAccent,
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
          ),
          backgroundColor: Colors.orange,
        ),
        body: DicePage(),
      ),
    ),
  );
}
// class DicePage extends StatelessWidget {
//
// }
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenum = 1;
  int rightdicenum = 1;
  @override
  Widget build(BuildContext context) {
    // leftdicenum = 2;
    // rightdicenum = 3;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: FilledButton(
                child: Image.asset('images/dice$leftdicenum.png'),
                onPressed: (){
                  setState(() {
                  leftdicenum = Random().nextInt(6) +1;
                  });
                },
              )
          ),
          Expanded(
            child: FilledButton(onPressed: (){
              setState(() {
                rightdicenum = Random().nextInt(6) +1;
              });
            },
              child: Image.asset('images/dice$rightdicenum.png'),
            ),
          ),
          // Expanded(
          //     image: AssetImage('images/dice1.png'),
          //     // height: 150, width: 150,
          // ),
          // SizedBox(width: 10,),
          // Image(image: AssetImage('images/dice1.png'),
          //       height: 150, width: 150,
          // )
        ],
      ),
    );
  }
  }


