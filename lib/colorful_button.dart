import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class ColorfulButton extends StatefulWidget {
  final Color mainColor, secondColor; //we put final for the main color and second color
  final IconData iconData; //we put the final for icondata

  @override
  _ColorfulButtonState createState() =>
      _ColorfulButtonState(mainColor, secondColor, iconData); //in here we put all of it inside the ()

  ColorfulButton(this.mainColor, this.secondColor, this.iconData  ); // we put it again with this.
}

class _ColorfulButtonState extends State<ColorfulButton> {
  bool isPressed = false; //so we can know if our button is pressed or not
  Color mainColor, secondColor; //we input the mainColor and Second Color
  IconData iconData;//we put the icon data

  _ColorfulButtonState(this.mainColor, this.secondColor, this.iconData); // we put it again with this.

  @override
  Widget build(BuildContext context) {
    return Transform.rotate( //using transform.rotate so the rectangle shape rotate to rhombus
      angle: pi /
          4, //import dart:math first then the pi is for 3.14..., we divide by 4 to rotate it
      child: GestureDetector( //when we click they take the deatils but we dont use the react
        onTapDown: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        }, 
        onTapUp: (details) { //if we let go our finger from the button
          setState(() {
            isPressed = !isPressed;
          });
        }, 
        onTapCancel: () { //its when we didnt remove our finger but we move out of the button
          setState(() {
            isPressed = !isPressed;
          });
        }, 
        child: Material(
          borderRadius: BorderRadius.circular(15), //making it have shadow
          elevation: (isPressed)
              ? 5
              : 10, //if pressed the elevation is 5, but if its not pressed elevation 10
          shadowColor: (isPressed)
              ? secondColor
              : mainColor, //if pressed use shadowcolor second, if not use maincolor for shadow
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
                15), //to cut all the 4circle outside the widget, making it only shows the inside button
            child: Stack(
              children: <Widget>[
                SizedBox(
                    width: 50, //the sized box width
                    height: 50, //the height of the sized box
                    child: Material(
                      borderRadius: BorderRadius.circular(
                          15), //making the sized box have border radius circular 15
                      color: (isPressed)
                          ? secondColor
                          : mainColor, //if is pressed use second color, if not use main color
                      child: Transform.rotate( //this is so we can rotate back to the normal angle for the icons so it doesnt follow the box
                        angle: -pi /
                            4, //this is so we can rotate back to the normal angle for the icons
                        child: Icon(
                          iconData, //using iconData to take it from main.dart
                          color: Colors.white, //the color of the button
                        ),
                      ),
                    )),
                Transform.translate( //this if to make a little circle outside the box, but using cliprrct to make it looks like only a few of it left
                  //translate the offset
                  offset: Offset(30, 30), //the offset of the circle from the box
                  child: SizedBox( //making a sized box widget
                    width: 50, //making the same width and height with the box
                    height: 50, //making the same width and height with the box
                    child: Material(
                      borderRadius: BorderRadius.circular(25), //this is making it look like a circle
                      color: Colors.white.withOpacity(0.5), //using opacity to make it not very obivious
                    ),
                  ),
                ),
                Transform.translate( //this if to make a little circle outside the box, but using cliprrct to make it looks like only a few of it left
                  //translate the offset
                  offset: Offset(-30, 30), //the offset of the circle from the box
                  child: SizedBox( //making a sized box widget
                    width: 50, //making the same width and height with the box
                    height: 50, //making the same width and height with the box
                    child: Material(
                      borderRadius: BorderRadius.circular(25), //this is making it look like a circle
                      color: Colors.white.withOpacity(0.5), //using opacity to make it not very obivious
                    ),
                  ),
                ),
                Transform.translate( //this if to make a little circle outside the box, but using cliprrct to make it looks like only a few of it left
                  //translate the offset
                  offset: Offset(-30, -30), //the offset of the circle from the box
                  child: SizedBox( //making a sized box widget
                    width: 50, //making the same width and height with the box
                    height: 50, //making the same width and height with the box
                    child: Material(
                      borderRadius: BorderRadius.circular(25), //this is making it look like a circle
                      color: Colors.white.withOpacity(0.5), //using opacity to make it not very obivious
                    ),
                  ),
                ),
                Transform.translate( //this if to make a little circle outside the box, but using cliprrct to make it looks like only a few of it left
                  //translate the offset
                  offset: Offset(30, -30), //the offset of the circle from the box
                  child: SizedBox( //making a sized box widget
                    width: 50, //making the same width and height with the box
                    height: 50, //making the same width and height with the box
                    child: Material(
                      borderRadius: BorderRadius.circular(25), //this is making it look like a circle
                      color: Colors.white.withOpacity(0.5), //using opacity to make it not very obivious
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
