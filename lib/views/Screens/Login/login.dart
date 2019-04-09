import 'package:flutter/material.dart';
import 'package:etude/Components/inputField.dart';
import 'package:etude/Components/button.dart';
import 'package:etude/Components/flatButton.dart';

class Login extends StatefulWidget{
  @override
  LoginState createState() => new LoginState();
}

class LoginState extends State<Login>{
  final _formKey = GlobalKey<FormState>();
  final _emailController = new TextEditingController();
  final _passwordController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: new Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              new InputField(hint: 'Email', obscure: false, controller: _emailController, validator: validate,),
              SizedBox(height: 8.0),
              new InputField(hint: 'Password', obscure: true, controller: _passwordController, validator: validate),
              SizedBox(height:24.0),
              new Button(buttonText: 'Login', pressed: login),
              SizedBox(height: 1.0),
              new Flat(buttonName: 'Click here to register', pressed: switchToRegister,),
              SizedBox(height: 2.0,),
              new Flat(buttonName: 'Forgot Password?', pressed:  resetPassword,)
            ],
          ),
        )
      ),
    );
  }
  VoidCallback login(){
  }

  VoidCallback switchToRegister(){
    Navigator.of(context).pushReplacementNamed('/Register');
  }

  VoidCallback resetPassword()
  {

  }

  String validate(String value){
    if(value.isEmpty){
      return 'Required';
    }
    return null;
  }
}