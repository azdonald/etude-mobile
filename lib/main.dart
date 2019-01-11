import 'package:flutter/material.dart';
import 'package:validate/validate.dart';
import 'package:etude/models/users.dart';
import 'package:etude/services/apiService.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'etude',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: RegisterForm(),
    );
  }
}

class RegisterForm extends StatefulWidget{
  @override
  RegisterFormState createState() => new RegisterFormState();
}

class RegisterFormState extends State<RegisterForm>{
  final _formKey = GlobalKey<FormState>();

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
      appBar: AppBar(
        title: Text('Join etude'),
      ),
      body: _buildForm(),
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

  Widget _buildForm(){
    return Form(
      key: _formKey,
      child: new Container(
        margin: EdgeInsets.only(top: 80.0, right: 45.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: new InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'First Name'
              ),
              validator: (String value){
                if (value.isEmpty ){
                  return 'Firstname is required';
                }
              },
              onSaved: (String value){},
              controller: _firstNameController,
            ),
            TextFormField(
              decoration: new InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Last Name'
              ),
              validator: (String value){
                if (value.isEmpty ){
                  return 'Lastname is required';
                }
              },
              onSaved: (String value){},
              controller: _lastNameController,
            ),
            TextFormField(
              decoration: new InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Email'
              ),
              validator: _validateEmail,
              onSaved: (String value){},
              controller: _emailController,
            ),
            TextFormField(
              decoration: new InputDecoration(
                icon: Icon(Icons.lock),
                hintText: 'Password'
              ),
              obscureText: true,
              onSaved: (String value){},
              controller: _passwordController,
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){
                    if(this._formKey.currentState.validate()){
                      this.register();
                    }
                  },
                  child: Text('Enter'),
                  color: Colors.blue,
                  textColor: Colors.white,
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}

class LoginForm extends StatefulWidget{
  @override
  LoginFormState createState() => new LoginFormState();
}

class LoginFormState extends State<LoginForm>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: _buildForm(),
    );
  }
  Widget _buildForm(){
    return Form(
      key: _formKey,
      child: Center(
          child: Container(
            padding: const EdgeInsets.only(top: 45.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 95.0, horizontal: 38.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            TextFormField(
                              decoration: const InputDecoration(
                                icon: Icon(Icons.email),
                                hintText: 'Email Address',
                              ),
                                validator: (String value){
                                  if (value.isEmpty) {
                                    return 'Email cannot be empty';
                                  }
                                }
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                icon: Icon(Icons.lock),
                                hintText: 'Password'
                              ),
                              validator: (String value){
                                if(value.isEmpty ){
                                  return 'Password cannot be empty';
                                }
                              },
                              onSaved: (String value){

                              },
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 105.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RaisedButton(
                              color: Colors.blue,
                              onPressed: () {},
                              child: Text('Login'),
                              textColor: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      )

    );
  }
}

