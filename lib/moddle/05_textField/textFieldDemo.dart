import 'package:flutter/material.dart';


class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldDemo> {
  final textEditController = TextEditingController();

  @override
  void dispose() {//释放内存
    textEditController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    textEditController.text = '你好，请注册';
    textEditController.addListener(() {
      debugPrint('监听input  '+'${textEditController.text}');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      // onChanged: (value) {//监听输入框的数据
      //   debugPrint('input $value');
      // },
      controller: textEditController,

      onSubmitted: (value) {
        debugPrint('output $value');
      },
      decoration: InputDecoration(
          icon: Icon(Icons.subject),
          labelText: 'title',
          hintText: '请输入',
          border: OutlineInputBorder(),
          //外边框
          filled: true //灰色背景
          ),
    );
  }
}