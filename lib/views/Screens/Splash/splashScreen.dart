import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget{
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>{
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: new Center(
        child: new Image.asset('images/students.png'),
      ),
    );
  }
}