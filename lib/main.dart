import 'package:flutter/material.dart';
import 'colorful_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colorfull Rhombus Buttons"),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //use spaceevenly so it's divided by 4 evenly
          children: <Widget> [
            ColorfulButton(Colors.green, Colors.blue[800], Icons.money), //the first widget we put mainColor,secondColor,iconData
            ColorfulButton(Colors.amber, Colors.black, Icons.comment), //the second widget we put mainColor,secondColor,iconData
            ColorfulButton(Colors.red, Colors.brown[800], Icons.alarm), //the third widget we put mainColor,secondColor,iconData
            ColorfulButton(Colors.cyan, Colors.purple, Icons.account_tree), //the fourth widget we put mainColor,secondColor,iconData
          ],
        )),
      ),
    );
  }
}
