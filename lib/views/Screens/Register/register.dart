import 'package:flutter/material.dart';
import 'package:validate/validate.dart';
import 'package:etude/models/users.dart';
import 'package:etude/services/apiService.dart';
import 'package:etude/Components/registerForm.dart';



class RegisterForm extends StatefulWidget{
  @override
  RegisterFormState createState() => new RegisterFormState();
}

class RegisterFormState extends State<RegisterForm>{

  final _firstNameController = new TextEditingController();
  final _lastNameController  = new TextEditingController();
  final _emailController     = new TextEditingController();
  final _passwordController  = new TextEditingController();

  String _validateEmail(String value){
    try{
      Validate.isEmail(value);
    }catch (e){
      return 'Email Address must be valid';
    }
    return null;
  }

  void submit(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: new Register()
        ),
    );
  }

  void register(){
    User user = new User();
    user.firstname = _firstNameController.text;
    user.lastname  = _lastNameController.text;
    user.email = _emailController.text;
    user.password = _passwordController.text;

    print('Just before register');
    registerUser(user);
  }

}