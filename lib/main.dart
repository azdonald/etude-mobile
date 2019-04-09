import 'package:flutter/material.dart';
import 'package:etude/views/Screens/Register/register.dart';
import 'package:etude/views/Screens/Splash/splashScreen.dart';
import 'package:etude/views/Screens/Login/login.dart';
import 'package:etude/views/Screens/Profile/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'etude',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepOrange,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/Register' : (BuildContext context) => new Register(),
        '/Login' : (BuildContext context) => new Login(),
        '/Profile' : (BuildContext context) => new Profile()
      },
    );
  }
}


