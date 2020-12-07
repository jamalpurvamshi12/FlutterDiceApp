import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice "),
          backgroundColor: Colors.red,
        ),

        backgroundColor: Colors.red,
        body: DiceApp1(),
      ),
    );
  }
}

class DiceApp1 extends StatefulWidget {
  @override
  _DiceApp1State createState() => _DiceApp1State();
}

class _DiceApp1State extends State<DiceApp1>
{
  int indexnumber=1;
  int indexnumber2=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: ()
                {
                 setState(()
                 {
                    indexnumber=Random().nextInt(6)+1;
                 });
                },
                child: Image.asset('images/dice$indexnumber.png')
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: ()
                {
                    setState(()
                    {
                      indexnumber2=Random().nextInt(6)+1;
                    });
                },
                child: Image.asset('images/dice$indexnumber2.png')
            ),
          ),
        ],
      ),
    );
  }
}




  
