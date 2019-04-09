import 'package:flutter/material.dart';


class ProfileRow extends StatelessWidget{
  final String today;

  ProfileRow({this.today});
  
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.only(left: 64.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            'My Profile',
            style: new TextStyle(fontSize: 34.0),
          ),
          new Text(
              today,
            style: new TextStyle(color: Colors.grey, fontSize: 12.0),
          )
        ],
      ),
    );
  }
}