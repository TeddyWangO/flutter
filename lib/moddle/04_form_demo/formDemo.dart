import 'package:flutter/material.dart';
import '../05_textField/textFieldDemo.dart';
import 'RegisterFormDemo.dart';

class FormDemo extends StatelessWidget {
  const FormDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ThemeColor(),
      appBar: AppBar(
        title: Text('welcome'),
      ),

      body: Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.black),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://img2.baidu.com/it/u=2034354601,222607994&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=889'),
                  fit: BoxFit.fill
            )),
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldDemo(),
                SizedBox(
                  height: 20.0,
                ),
                RegisterFormDemo(),
              ],
            ),
          )),
    );
  }
}

class ThemeColor extends StatelessWidget {
  const ThemeColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [TextFieldDemo()],
      ),
    );
  }
}
