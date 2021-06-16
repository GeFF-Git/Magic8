

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent[100],
          appBar: AppBar(
            backgroundColor: Colors.blue[800],
            title: Text('Ask Me Anything'),
          ),
          body: AskMe(),
        ),


      ),
    );


class AskMe extends StatefulWidget {
  const AskMe({Key key}) : super(key: key);

  @override
  _AskMeState createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  int change = 1;
  int Change(){
    setState(() {
      change = Random().nextInt(5) + 1;

    });

  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FlatButton(onPressed: () {
              Change();


            },
            child: Image.asset('images/ball$change.png')),
          ),
          ),
        ],

      )

    );
  }
}

