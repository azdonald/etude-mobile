import 'package:flutter/material.dart';


class Button extends StatelessWidget{
  final String buttonText;
  final VoidCallback pressed;
  
  Button({this.buttonText, this.pressed});
  
  @override
  Widget build(BuildContext context) {
    return (new Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24)
        ),
        onPressed: pressed,
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text(this.buttonText, style: TextStyle(color: Colors.white),),
          ),
    ));
  }
}