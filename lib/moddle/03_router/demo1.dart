import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: RouterDemo(),
      initialRoute: '/',//设置初始页面,会与home冲突，不能同时存在
      routes: {
        '/':(context)=>RouterDemo(),
        // '/':(context)=>Page(title: "About"),
        '/About':(context)=>Page(title: "About"),
        '/Detail':(context)=>Page(title: "Detail")
      },
    );
  }
}

class RouterDemo extends StatelessWidget {
  const RouterDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(
                  // MaterialPageRoute(builder:
                  // (BuildContext context) =>Page(title: "Routes")
                  // )
                // );
                Navigator.pushNamed(context, '/Detail');
              },
              child:Text("About")
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder:
                          (BuildContext context) =>Page(title: "Detail")
                      )
                  );
                },
                child:Text("Detail")
            )
          ],
        )
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;
  Page({
    required this.title
 });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 1.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}

