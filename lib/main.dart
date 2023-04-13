import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:decimal/decimal.dart';

// import 'moddle/post.dart';
/*
void main(){
  runApp(
      const Center(
      child:Text(
            'hello',
            textDirection: TextDirection.ltr,
      ),
    )
  );
}


void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return const Center(
     child:Text(
       'hello,flutter',
       textDirection: TextDirection.rtl,
       style: TextStyle(
         color: Colors.red,
         fontSize: 40.0,
         fontWeight: FontWeight.bold
       ),
     ),
   );
  }
}

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         centerTitle: true,//标题居中
         title: const Text('Welcome'),
         elevation: 40.0, //阴影
       ),
       body: Hello(),
     ),
     theme: ThemeData(
       primarySwatch: Colors.lightGreen //主题
   ),
   );
  }
}

class Hello extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello,flutter',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Colors.red,
          fontSize: 40.0,
          fontWeight: FontWeight.bold,

        ),
      ),
    );
  }
}
*/

/*
void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Scaffold(
      //   appBar: AppBar(
      //     centerTitle: true,//标题居中
      //     title: const Text('Welcome'),
      //     elevation: 40.0, //阴影
      //   ),
      //   body: Hello(),
      // ),
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.lightGreen //主题
      ),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,//标题居中
        title: const Text('Welcome'),
        elevation: 40.0, //阴影
      ),
      body: Hello(),
    );
  }
}

class Hello extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello,flutter',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Colors.red,
          fontSize: 40.0,
          fontWeight: FontWeight.bold,

        ),
      ),
    );
  }
}
*/

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() {
    return Hello();
  }
}

class Hello extends State<App> {
  // TextEditingController text1 = TextEditingController();
  // TextEditingController text2 = TextEditingController();
  String suanshi = '';
  String result = '';

  get child => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, //标题居中
          title: const Text('计算器'),
          elevation: 40.0, //阴影
        ),
        body: Column(

          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  suanshi,
                  style: const TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.ltr,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),

                SizedBox(width:20)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  result,
                  style:
                  const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),

            // TextField(
            //   controller: text1,
            //   cursorColor: Colors.blue,
            //   cursorHeight: 20,
            //   cursorRadius: const Radius.circular(10),
            //   cursorWidth: 2,
            //   showCursor: true,
            //   readOnly: true,
            //   decoration: const InputDecoration(
            //     isCollapsed: true,
            //     contentPadding:
            //         EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            //   ),
            //   maxLines: null,
            //   minLines: 1,
            // ),
            // const Padding(
            //   padding: EdgeInsets.only(top: 20.0),
            // ),

            // TextField(
            //   controller: text2,
            //   cursorColor: Colors.blue,
            //   cursorHeight: 20,
            //   cursorRadius: const Radius.circular(10),
            //   cursorWidth: 2,
            //   showCursor: true,
            //   readOnly: true,
            //   decoration: const InputDecoration(
            //     isCollapsed: true,
            //     contentPadding:
            //         EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            //   ),
            //   maxLines: null,
            //   minLines: 1,
            // ),
            // const Padding(
            //   padding: EdgeInsets.only(top: 30.0),
            // ),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(39),
                        decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Colors.red, width: 3),
                              //
                              right: BorderSide(color: Colors.red, width: 3),
                              bottom: BorderSide(color: Colors.red, width: 3),
                              left: BorderSide(color: Colors.red, width: 3)),
                        ),
                        child: GestureDetector(
                          child: const Text(
                            "7",
                            style: TextStyle(
                                fontSize: 26.0,
                                height: 1.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange),
                          ),
                          onTap: () {
                            setState(() {
                              // suanshi = "$suanshi 7".replaceAll(" ", "");
                              result = "$result 7".replaceAll(" ", "");
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(39),
                        decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Colors.red, width: 3), //
                              right: BorderSide(color: Colors.red, width: 3),
                              bottom: BorderSide(color: Colors.red, width: 3),
                              left: BorderSide(color: Colors.red, width: 0)),
                        ),
                        child: GestureDetector(
                            child: const Text(
                              "8",
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi 8".replaceAll(" ", "");
                                result = "$result 8".replaceAll(" ", "");
                              });
                            }),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(39),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.red, width: 3), //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.cyan, width: 0)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "9",
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi 9".replaceAll(" ", "");
                                result = "$result 9".replaceAll(" ", "");
                              });
                            },
                          )),
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(39),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.red, width: 3), //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.red, width: 0)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "+",
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi +".replaceAll(" ", "");
                                suanshi = "$suanshi $result +".replaceAll(" ", "");
                                result = "";
                              });
                            },
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(39),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.red, width: 0),
                                //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.red, width: 3)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "4",
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi 4".replaceAll(" ", "");
                                result = "$result 4".replaceAll(" ", "");
                              });
                            },
                          )),
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(39),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.red, width: 0), //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.red, width: 0)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "5",
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi 5".replaceAll(" ", "");
                                result = "$result 5".replaceAll(" ", "");
                              });
                            },
                          )),
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(39),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.red, width: 0), //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.red, width: 0)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "6",
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi 6".replaceAll(" ", "");
                                result = "$result 6".replaceAll(" ", "");
                              });
                            },
                          )),
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(41),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.red, width: 0), //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.red, width: 0)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "-",
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 0.85,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi -".replaceAll(" ", "");
                                suanshi = "$suanshi $result -".replaceAll(" ", "");
                                result = "";
                              });
                            },
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(39),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.red, width: 0), //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.red, width: 3)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi 1".replaceAll(" ", "");
                                result = "$result 1".replaceAll(" ", "");
                              });
                            },
                          )),
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(39),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.blue, width: 0), //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.cyan, width: 0)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi 2".replaceAll(" ", "");
                                result = "$result 2".replaceAll(" ", "");
                              });
                            },
                          )),
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(39),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.blue, width: 0), //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.cyan, width: 0)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi 3".replaceAll(" ", "");
                                result = "$result 3".replaceAll(" ", "");
                              });
                            },
                          )),
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(38),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.blue, width: 0), //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.cyan, width: 0)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "x",
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi x".replaceAll(" ", "");
                                suanshi = "$suanshi $result x".replaceAll(" ", "");
                                result = "";
                              });
                            },
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(39),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.red, width: 0),
                                //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.red, width: 3)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "0",
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi 0".replaceAll(" ", "");
                                result = "$result 0".replaceAll(" ", "");
                              });
                            },
                          )),
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(39),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.red, width: 0), //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.cyan, width: 0)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "00",
                              style: TextStyle(
                                  fontSize: 17.0,
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi 00".replaceAll(" ", "");
                                result = "$result 00".replaceAll(" ", "");
                              });
                            },
                          )),
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(39),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.blue, width: 0), //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.cyan, width: 0)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              ".",
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi .".replaceAll(" ", "");
                                result ="$result .".replaceAll(" ", "");
                                print("----------------------------"+result);
                              });
                            },
                          )),
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(39),
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(color: Colors.blue, width: 0), //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.cyan, width: 0)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "/",
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            onTap: () {
                              setState(() {
                                // suanshi = "$suanshi /".replaceAll(" ", "");
                                suanshi = "$suanshi $result /".replaceAll(" ", "");
                                result = "";
                              });
                            },
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 39),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            border: Border(
                                top: BorderSide(color: Colors.blue, width: 0),
                                //
                                right: BorderSide(color: Colors.red, width: 4),
                                bottom: BorderSide(color: Colors.red, width: 5),
                                left: BorderSide(color: Colors.red, width: 6)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "CLEAR",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            onTap: () {
                              setState(() {
                                suanshi = "";
                                result = "";
                              });
                            },
                          )),
                    ),
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 39),
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            border: Border(
                                top: BorderSide(color: Colors.red, width: 2),
                                //
                                right: BorderSide(color: Colors.red, width: 3),
                                bottom: BorderSide(color: Colors.red, width: 3),
                                left: BorderSide(color: Colors.red, width: 0)),
                          ),
                          child: GestureDetector(
                            child: const Text(
                              "=",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            onTap: () {
                              setState(() {
                                suanshi = "$suanshi $result";
                                doAdd(suanshi);
                                doDiv(suanshi);
                                doSub(suanshi);
                                doMul(suanshi);
                                suanshi = "$suanshi =";
                              });
                            },
                          )),
                    ),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.lightGreen //主题
          ),
    );
  }

  void doAdd(String str) {
    str = str.replaceAll(" ", "");
    setState(() {
      if (str.contains("+")) {
        int index = str.indexOf("+");
        String res1 = str.substring(0, index);
        String res2 = str.substring(index + 1);
        final n1 = Decimal.parse(res1);
        final n2 = Decimal.parse(res2);
        // suanshi = result;
        result = (n1 + n2).toString();
      }
    });
  }

  void doSub(String str) {
    str = str.replaceAll(" ", "");
    setState(() {
      if (str.contains("-")) {
        int index = str.indexOf("-");
        String res1 = str.substring(0, index);
        String res2 = str.substring(index + 1);
        final n1 = Decimal.parse(res1);
        final n2 = Decimal.parse(res2);
        // suanshi = result;
        result = (n1 - n2).toString();
      }
    });
  }

  void doMul(String str) {
    str = str.replaceAll(" ", "");
    setState(() {
      if (str.contains("x")) {
        int index = str.indexOf("x");
        String res1 = str.substring(0, index);
        String res2 = str.substring(index + 1);
        final n1 = Decimal.parse(res1);
        final n2 = Decimal.parse(res2);
        // suanshi = result;
        result = (n1 * n2).toString();
      }
    });
  }

  void doDiv(String str) {
    str = str.replaceAll(" ", "");
    setState(() {
      if (str.contains("/")) {
        int index = str.indexOf("/");
        String res1 = str.substring(0, index);
        String res2 = str.substring(index + 1);
        final n1 = Decimal.parse(res1);
        final n2 = Decimal.parse(res2);
        // suanshi = result;
        result = (n1 / n2).toString();
        print("=============================" + result);
      }
    });
  }
}
