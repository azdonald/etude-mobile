import 'package:flutter/material.dart';


class Flat extends StatelessWidget
{
  final String buttonName;
  final VoidCallback pressed;

  Flat({this.buttonName, this.pressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        this.buttonName,
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: pressed
    );
  }
}