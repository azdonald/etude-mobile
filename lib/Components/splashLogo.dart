import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget{
  final DecorationImage image;
  SplashLogo({this.image});

  @override
  Widget build(BuildContext context) {
    return (new Container(
      width: 250.0,
      height: 250.0,
      alignment: Alignment.center,
      decoration: new BoxDecoration(
        image: image
      ),
    ));
  }
}