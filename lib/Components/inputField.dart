import 'package:flutter/material.dart';

class InputField extends StatelessWidget{
  final String hint;
  final bool obscure;
  final controller;
  final validator;

  InputField({this.hint, this.obscure, this.controller, this.validator});
  @override
  Widget build(BuildContext context) {
    return new TextFormField(
      autofocus: false,
      obscureText: this.obscure,
      controller: this.controller,
      decoration: InputDecoration(
        hintText: this.hint,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
      validator: this.validator,
    );
  }

  String getText(){
    return this.controller.text;
  }
}