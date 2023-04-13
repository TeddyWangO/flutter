import 'dart:developer';
import 'loginDemo.dart';
import 'package:flutter/material.dart';

class RegisterFormDemo extends StatefulWidget {
  const RegisterFormDemo({Key? key}) : super(key: key);

  @override
  State<RegisterFormDemo> createState() => _RegisterFormDemoState();
}

class _RegisterFormDemoState extends State<RegisterFormDemo> {
  var un = false;
  var pwd = false;
  String? username, password;
  final registerFormKey = GlobalKey<FormState>();

  void RegisterSave() {
    registerFormKey.currentState?.save();
    registerFormKey.currentState?.validate();
    debugPrint('username；$username');
    debugPrint('password；$password');
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Register......')));

    if(un&&pwd){
      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) =>
              loginDemo(username: '$username', password: '$password')));
    }else{
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          backgroundColor: Colors.white70,
          title: Text("Sorry"),
          content: Text("your userName or passWord is error.please retry.."),
          actions: [
            ElevatedButton(
              child: Text("OK"),
              onPressed: () { Navigator.of(context).pop();},
            ),
          ],
        );
      });
    }
  }

  String usernameCheck(value) {
    if (value.isEmpty) {
      return 'UserName is required.';
    }else{
      un = true;
    }
    return 'PASS';
  }

  String passwordCheck(value) {
    if (value.isEmpty) {
      return 'password is required';
    }else{
      pwd = true;
    }
    return 'PASS';
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: registerFormKey,
        child: Column(
          children: [
            TextFormField(
              decoration:
                  InputDecoration(labelText: 'UserName:', helperText: ''),
              onSaved: (value) {
                username = value;
              },
              validator: usernameCheck,
              autovalidateMode: AutovalidateMode.onUserInteraction, //自动校验
            ),
            TextFormField(
              obscureText: true,
              //加密
              decoration:
                  InputDecoration(labelText: 'PassWord:', helperText: ''),
              onSaved: (value) {
                password = value;
              },
              validator: passwordCheck,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              autocorrect: false,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: RegisterSave,
              ),
            ),
            TextButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => loginDemo(
                        username: '', password: ''))),
                child: Text('I have account.~~',
                    style: TextStyle(color: Colors.white, fontSize: 10)),

            )
          ],
        ));
  }
}
