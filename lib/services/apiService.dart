import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:etude/models/users.dart';

void registerUser(User user ) async{
  print('Register called');
  var url = 'http://c7bba369.ngrok.io/api/register';

  final response = await http.post(url,
      headers: {'Content-Type':'application/json'},
      body: json.encode(user.toJson()));

  if (response.statusCode == 201){
    print(response.body);
  }else{
    print(response.statusCode);
  }
}