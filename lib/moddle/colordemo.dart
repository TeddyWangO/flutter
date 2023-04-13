import 'package:flutter/material.dart';

class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    var pinkBox = Container(

      child: Text(
        '7',

        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.pink,
      height: 100,
      width: 108,
    );

    var pinkOneBox = Container(

      child: Text(
        '8',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.pink[100],
      height: 100,
      width: 108,
    );

    var pinkTwoBox = Container(
      child: Text(
        '9',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.pink[200],
      height: 100,
      width: 108,
    );

    var pinkThreeBox = Container(
      child: Text(
        '/',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.pink[300],
      height: 100,
      width: 108,
    );

    var greyBox = Container(
      child: Text(
        '4',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.grey,
      height: 100,
      width: 108,
    );

    var greyOneBox = Container(
      child: Text(
        '5',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.grey[100],
      height: 100,
      width: 108,
    );

    var greyTwoBox = Container(
      child: Text(
        '6',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.grey[200],
      height: 100,
      width: 108,
    );

    var greyThreeBox = Container(
      child: Text(
        'X',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.grey[300],
      height: 100,
      width: 108,
    );

    var blueBox = Container(
      child: Text(
        '1',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.blue,
      height: 100,
      width: 108,
    );

    var blueOneBox = Container(
      child: Text(
        '2',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.blue[100],
      height: 100,
      width: 108,
    );

    var blueTwoBox = Container(
      child: Text(
        '3',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.blue[200],
      height: 100,
      width: 108,
    );

    var blueThreeBox = Container(
      child: Text(
        '-',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.blue[300],
      height: 100,
      width: 108,
    );

    var yellowBox = Container(
      child: Text(
        '.',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.yellow,
      height: 100,
      width: 108,
    );

    var yellowOneBox = Container(
      child: Text(
        '0',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.yellow[100],
      height: 100,
      width: 108,
    );

    var yellowTwoBox = Container(
      child: Text(
        '00',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.yellow[200],
      height: 100,
      width: 108,
    );

    var yellowThreeBox = Container(
      child: Text(
        '+',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.yellow[300],
      height: 100,
      width: 108,
    );

    var redBox = Container(
      child: Text(
        'CLEAR',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.red,
      height: 100,
      width: 210,
    );

    var greenBox = Container(
      child: Text(
        '=',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      color: Colors.green,
      height: 100,
      width: 210,
    );

    var text1 = TextEditingController();
    var answer = TextEditingController();
    _textWidget(){
      return Column(children: [
        TextField(
          controller: text1,
          cursorColor: Colors.blue,
          cursorHeight: 20,
          cursorRadius: const Radius.circular(10),
          cursorWidth: 2,
          showCursor: true,
          readOnly: true,
          decoration: const InputDecoration(
            isCollapsed: true,
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          ),
          maxLines: null,
          minLines: 1,),
        TextField(
          controller: answer,
          cursorColor: Colors.blue,
          cursorHeight: 20,
          cursorRadius: const Radius.circular(10),
          cursorWidth: 2,
          showCursor: true,
          readOnly: true,
          decoration: const InputDecoration(
            isCollapsed: true,
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          ),
          maxLines: null,
          minLines: 1,
        ),

      ],);
    }
    return  Container(
      color: Colors.grey.withAlpha(33),
      child: Column(
        children: [
          _textWidget(),
          Expanded(
            child: Stack(
              textDirection: TextDirection.rtl,
              fit: StackFit.loose,
              alignment: Alignment.bottomLeft,
              children: <Widget>[	 Positioned(
                child: pinkBox,
                left: 0,
                bottom: 400,
              ),
                Positioned(
                  child: pinkOneBox,
                  left: 110,
                  bottom: 400,
                ),
                Positioned(
                  child: pinkTwoBox,
                  left: 210,
                  bottom: 400,
                ),
                Positioned(
                  child: pinkThreeBox,
                  left: 310,
                  bottom: 400,
                ),

                Positioned(
                  child: greyBox,
                  left: 0,
                  bottom: 300,
                ),
                Positioned(
                  child: greyOneBox,
                  left: 110,
                  bottom: 300,
                ),
                Positioned(
                  child: greyTwoBox,
                  left: 210,
                  bottom: 300,
                ),
                Positioned(
                  child: greyThreeBox,
                  left: 310,
                  bottom: 300,
                ),
                Positioned(
                  child: blueBox,
                  left: 0,
                  bottom: 200,
                ),
                Positioned(
                  child: blueOneBox,
                  left: 110,
                  bottom: 200,
                ),
                Positioned(
                  child: blueTwoBox,
                  left: 210,
                  bottom: 200,
                ),
                Positioned(
                  child: blueThreeBox,
                  left: 310,
                  bottom: 200,
                ),
                Positioned(
                  child: yellowBox,
                  left: 0,
                  bottom: 100,
                ),
                Positioned(
                  child: yellowOneBox,
                  left: 110,
                  bottom: 100,
                ),
                Positioned(
                  child: yellowTwoBox,
                  left: 210,
                  bottom: 100,
                ),
                Positioned(
                  child: yellowThreeBox,
                  left: 310,
                  bottom: 100,
                ),
                Positioned(
                  child: redBox,
                  left: 0,
                  bottom: 0,
                ),

                Positioned(
                  bottom: 0,
                  right: 0,
                  child: greenBox,
                ),

              ],
            ),
          ),
        ],
      ),

    );
  }
}

class App extends StatelessWidget{
  @override

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.pink,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70
      ),
    );
  }
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('计算器'),
      ),
      body: Hello(),
    );
  }

}