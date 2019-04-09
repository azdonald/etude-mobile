import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:etude/models/users.dart';
import 'package:shared_preferences/shared_preferences.dart';




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

void saveToken(String token) async{
  final prefs =  await SharedPreferences.getInstance();

  prefs.setString('token', token);
  //prefs.setString('refreshToken', refreshToken);

}

Future<String> getToken() async{
  final prefs =  await SharedPreferences.getInstance();

  return prefs.get('token') ?? null;
}

Future<String> getRefreshToken() async{
  final prefs =  await SharedPreferences.getInstance();

  return prefs.get('refreshToken') ?? null;
}