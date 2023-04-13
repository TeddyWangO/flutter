import 'package:flutter/material.dart';
import '../app_kuangjjia/demo_app.dart';
import 'formDemo.dart';
import '../pub/dialog.dart';

class loginDemo extends StatefulWidget {

  String username, password;
  var flag;

  loginDemo({
    required this.username,
    required this.password,
    this.flag,
  });

  @override
  State<loginDemo> createState() {
    return _loginDemoState();
  }
}

class _loginDemoState extends State<loginDemo> {
  final _key = GlobalKey<FormState>();
  final textEditController1 = TextEditingController();
  final textEditController = TextEditingController();
  // String? username, password;
  var un = false;
  var  pwd = false;
  _loginDemoState();

  @override
  void initState() {
    // username = widget.username;
    textEditController1.text = widget.username;
    textEditController.text = widget.password;

    super.initState();
  }

  String userNameValidator(value) {
    if (value.isEmpty||value == ' ') {
      un = false;
      return 'UserName is required.';
    }else{
      un = true;
    }
    return 'PASS';
  }

  String passwordValidator(value) {
    if (value.isEmpty||value == ' ') {
      pwd = false;
      return 'Password is required.';
    }else{
      pwd = true;
    }
    return 'PASS';
  }

  void login() {
    _key.currentState?.validate();
    if(un&&pwd) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => Home(loginY_N: true)));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('please login...', style: TextStyle(
        ),),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://img1.baidu.com/it/u=3255982679,2651472561&fm=253&fmt=auto&app=138&f=PNG?w=1076&h=500'),
                fit: BoxFit.fitHeight
            )),
        // margin: EdgeInsets.fromLTRB(50, 195, 70, 0),
        child: Container(
          margin: EdgeInsets.fromLTRB(50, 195, 70, 0),
          child: Form(
              key: _key,
              child: Column(
                children: [
                  TextFormField(
                    controller: textEditController1,
                    decoration:
                    InputDecoration(labelText: 'UserName', helperText: '',),
                    validator: userNameValidator,
                  ),
                  TextFormField(
                    controller: textEditController,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        helperText: ''
                    ),
                    validator: passwordValidator,
                    obscureText: true,
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: login,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => FormDemo())),
                    child: Text('Register~~',
                        style: TextStyle(color: Colors.white, fontSize: 10)),

                  )
                ],
              )),
        ),
      ),
    );
  }
}
