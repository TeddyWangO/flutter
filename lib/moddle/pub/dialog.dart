import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {

  //设置按钮
  Widget okButton = ElevatedButton(
    child: Text("OK"),
    onPressed: () { },
  );

  //设置对话框
  AlertDialog alert = AlertDialog(
    title: Text("My Title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  //显示对话框
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}