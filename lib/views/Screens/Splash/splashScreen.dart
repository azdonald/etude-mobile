import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'styles.dart';
import 'package:etude/Components/splashLogo.dart';
import 'package:etude/services/apiService.dart';
import 'dart:async';


class SplashScreen extends StatefulWidget{
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>{

  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, navigationPage);
  }

  void navigationPage() async{
    var token = await getToken();
    if (token != null){
      navigateToLogin();
    }else{
      navigateToRegister();
    }
  }

  void navigateToLogin(){
    Navigator.of(context).pushReplacementNamed('/Login');
  }

  void navigateToRegister(){
    Navigator.of(context).pushReplacementNamed('/Register');
  }

  @override
  void initState(){
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return (new WillPopScope(
        onWillPop: null,
        child: new Scaffold(
          body: new Container(
            decoration: new BoxDecoration(
              image: backgroundImage
            ),
            child: new Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: <Color>[
                      const Color.fromRGBO(162, 146, 199, 0.8),
                      const Color.fromRGBO(51, 51, 63, 0.9)
                    ],
                  stops: [0.2,1.0],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0)
                )
              ),
              child: new ListView(
                padding: const EdgeInsets.all(0.0),
                children: <Widget>[
                  new Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: <Widget>[
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new SplashLogo(image: splashlogo,)
                        ],
                      )
                    ],
                  )
                ],
              )
            ),
          ),
        )
    )
    );
  }
}