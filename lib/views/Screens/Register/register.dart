import 'package:flutter/material.dart';
import 'package:validate/validate.dart';
import 'package:etude/models/users.dart';
import 'package:etude/Components/inputField.dart';
import 'package:etude/Components/button.dart';
import 'package:etude/Components/flatButton.dart';



class Register extends StatefulWidget{
  @override
  RegisterState createState() => new RegisterState();
}

class RegisterState extends State<Register>{

  final _formKey = GlobalKey<FormState>();
  final _firstNameController = new TextEditingController();
  final _lastNameController  = new TextEditingController();
  final _emailController     = new TextEditingController();
  final _passwordController  = new TextEditingController();

  void submit(){

  }

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
              new InputField(hint: 'First Name', obscure: false, controller: _firstNameController, validator: nameValidator,),
              SizedBox(height: 8.0),
              new InputField(hint: 'Last Name', obscure: false, controller: _lastNameController, validator: nameValidator,),
              SizedBox(height: 8.0),
              new InputField(hint: 'Email', obscure: false, controller: _emailController, validator: emailValidator,),
              SizedBox(height: 8.0),
              new InputField(hint: 'Password', obscure: true, controller: _passwordController, validator: passwordValidator,),
              SizedBox(height:24.0),
              new Button(buttonText: 'Register', pressed: registerUser),
              SizedBox(height: 1.0),
              new Flat(buttonName: 'Already Registered? Login', pressed:  switchToLogin,)
            ],
          ),
        )
        ),
    );
  }

  VoidCallback registerUser(){
    if (_formKey.currentState.validate()){
      Navigator.of(context).pushReplacementNamed('/Profile');
    }

//    User user = new User();
//    user.firstname = _firstNameController.text;
//    user.lastname  = _lastNameController.text;
//    user.email = _emailController.text;
//    user.password = _passwordController.text;
//
//    print('Just before register');
//    registerUser(user);
  }

  VoidCallback switchToLogin(){
    Navigator.of(context).pushReplacementNamed('/Login');
  }

  String nameValidator(String value){
    if(value.isEmpty){
      return 'This is required' ;
    }
    return null;
  }

  String emailValidator(String value){
    try{
      Validate.isEmail(value);
    }catch (e){
      return 'Email Address must be valid';
    }
    return null;
  }

  String passwordValidator(String value){
    if(value.length < 5){
      return 'Password is too short';
    }
    return null;
  }

}