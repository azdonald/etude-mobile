import 'package:flutter/material.dart';



class ProfileName extends StatelessWidget{
  final String name;

  ProfileName({this.name});

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.only(left: 16.0, top: 256.0 / 2.5),
      child: new Row(
        children: <Widget>[
          new CircleAvatar(
            minRadius: 28.0,
            maxRadius: 28.0,
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Text(
                  this.name,
                  style: new TextStyle(
                    fontSize: 26.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}