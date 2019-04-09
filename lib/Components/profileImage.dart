import 'package:flutter/material.dart';
import 'package:etude/Components/ClipPath.dart';



class ProfileImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new ClipPath(
      clipper: new DiagonalClipper(),
      child: new Image.asset(
        'assets/bc.png',
        fit: BoxFit.fitHeight,
        height: 256.0,
        colorBlendMode: BlendMode.srcOver,
        color: new Color.fromARGB(120, 20, 10, 40),
      ),
    );

  }
}