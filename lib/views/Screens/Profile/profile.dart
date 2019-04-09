import 'package:flutter/material.dart';
import 'package:etude/Components/profileImage.dart';
import 'package:etude/Components/profileHeader.dart';
import 'package:etude/Components/profileName.dart';
import 'package:etude/Components/profileRow.dart';
import 'package:intl/intl.dart';

class Profile extends StatefulWidget{
  @override
  ProfileState createState() => new ProfileState();
}

class ProfileState extends State<Profile>{
  String today = new DateFormat.yMMMMd().format(new DateTime.now());
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new ProfileImage(),
          new ProfileHeader(),
          new ProfileName(name: 'Azu Nwaokobia',),
          buildBottomPart()
        ],
      ),
    );
  }

  Widget buildBottomPart(){
    return new Padding(
      padding: new EdgeInsets.only(top: 256.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new ProfileRow(today: today,)
        ],
      ),
    );
  }
}