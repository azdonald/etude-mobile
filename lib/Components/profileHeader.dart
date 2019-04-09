import 'package:flutter/material.dart';



class ProfileHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
        child: new Row(
          children: <Widget>[
            new Icon(Icons.menu, size: 32.0, color: Colors.white,),
            new Expanded(
                child: new Text(
                    'Profile',
                  style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300
                  ),
                ),
            ),
            new Icon(Icons.linear_scale, color: Colors.white,),
          ],
        ),
    );
  }
}