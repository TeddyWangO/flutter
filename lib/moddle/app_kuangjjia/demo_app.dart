import 'package:demo/moddle/07_scopedModel/scopedModel.dart';
import 'package:demo/moddle/09_bloc/BlocDemo.dart';
import 'package:demo/moddle/11_http/httpDemo.dart';
 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../demo_data/hourse.dart';
import '../demo_data/hourse2.dart';
import '../02_stateful/demo_stateful.dart';
import 'show.dart';
import '../04_form_demo/formDemo.dart';
import '../04_form_demo/loginDemo.dart';
import 'package:mz_back_plugin/mz_back_plugin.dart';
import '../06_statemanagement_inherited//statemanage.dart';
import '../07_scopedModel/scopedModel.dart';
import '../08_stream/stream.dart';

void main() {
  runApp(Demo());
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home(),
      initialRoute: '/http',
      routes: {
        '/': (context) => Home(
              loginY_N: false,
            ),
        '/Form': (context) => FormDemo(),
        '/Statemanage':(context) => StateManagementDemo(),
         '/ScopeModel':(context)=> StateManagement_Scope_Demo(),
        '/Stream':(context)=>StreamDemo(),
        '/RxDart':(context)=>Bloc_Demo(),
        '/http':(context)=>HttpDemo()
      },
      theme: ThemeData(
          primaryColor: Colors.cyanAccent,
          highlightColor: Colors.grey,
          splashColor: Colors.brown),
    );
  }
}
Future<bool> _onWillPop() {
  MzBackPlugin.navigateToSystemHome();
  return Future.value(false);
}

class Home extends StatelessWidget {
  var loginY_N;

  Home({required this.loginY_N});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left_rounded,
                size: 35,
              ),
              tooltip: '菜单',
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>

                      loginDemo(username: '', password: ''))),
            ),
            actions: [
              IconButton(
                onPressed: () => {
                  loginY_N = false,
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          loginDemo(username: '', password: ''))),
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.white70,
                          title: Text("SUCCESS"),
                          content: Text("退出成功"),
                          actions: [
                            ElevatedButton(
                              child: Text("Ok"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      })
                },
                icon: Icon(Icons.login),
                tooltip: "登录",
              )
            ],
            centerTitle: true,
            title: Text('房屋管理'),
            elevation: 30.0,
            bottom: TabBar(
              indicatorColor: Colors.amber,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  text: "空置",
                ),
                Tab(
                  text: "已租",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  itemCount: dataList.length - 3,
                  itemBuilder: (context, index) {
                    var tags = dataList[index].tags;
                    var list = Iterable<int>.generate(
                      tags.length,
                    ).toList();
                    return Container(
                      height: 170,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Row(children: [
                            Image.network(
                              dataList[index].imageUrl,
                              width: 130,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dataList[index].id,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      height: 2.5),
                                ),
                                Text(
                                  dataList[index].title,
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                  softWrap: true,
                                  textDirection: TextDirection.ltr,
                                ),
                                Text(
                                  dataList[index].subTitle,
                                  style: TextStyle(fontSize: 13),
                                ),
                                Wrap(
                                    spacing: 5.0,
                                    runSpacing: 8.0,
                                    children: list.map((e) {
                                      return Chip(
                                        labelPadding: EdgeInsets.only(
                                            left: 0,
                                            right: 0,
                                            top: -5,
                                            bottom: -5),
                                        label: Text(
                                          tags[e],
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: e % 2 == 0
                                                ? Colors.red
                                                : Colors.green,
                                          ),
                                        ),
                                        backgroundColor: e % 2 == 0
                                            ? Colors.red.shade100
                                            : Colors.green.shade100,
                                      );
                                    }).toList()),
                                Text(
                                  dataList[index].price.toString() + "元/月",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                          ]),
                          Positioned.fill(
                              child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              //添加动画效果
                              splashColor: Colors.white.withOpacity(0.3), //设置透明度
                              highlightColor: Colors.white.withOpacity(0.1),
                              onTap: () {
                                // print("11111111111111111111");
                                if (loginY_N) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => ShowDemo(
                                          roomListItemData: dataList[index])));
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          backgroundColor: Colors.white70,
                                          title: Text("Sorry"),
                                          content: Text("请先完成登录！！！"),
                                          actions: [
                                            ElevatedButton(
                                              child: Text("Cancel"),
                                              onPressed: () {
                                                loginY_N = false;
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                            ElevatedButton(
                                              child: Text("Ok"),
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (BuildContext
                                                        context) =>
                                                            loginDemo(
                                                                username: '',
                                                                password: '')));
                                              },
                                            ),
                                          ],
                                        );
                                      });
                                }
                              },
                            ),
                          ))
                        ],
                      ),
                    );
                  }),
              ListView.builder(
                  itemCount: yiShouList.length,
                  itemBuilder: (context, index) {
                    var tags = yiShouList[index].tags;
                    var list = Iterable<int>.generate(
                      tags.length,
                    ).toList();
                    return Container(
                      height: 130,
                      color: Colors.white,
                      child: Row(children: [
                        Image.network(
                          yiShouList[index].imageUrl,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              yiShouList[index].id,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  height: 2.0),
                            ),
                            Text(
                              yiShouList[index].title,
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                              softWrap: true,
                              textDirection: TextDirection.ltr,
                            ),
                            Text(
                              yiShouList[index].subTitle,
                              style: TextStyle(fontSize: 10),
                            ),
                            Wrap(
                                spacing: 5.0,
                                runSpacing: 8.0,
                                children: list.map((e) {
                                  return Chip(
                                      labelPadding: EdgeInsets.only(
                                          left: 0, right: 0, top: -5, bottom: -5),
                                      label: Text(
                                        tags[e],
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: e % 2 == 0
                                              ? Colors.red
                                              : Colors.green,
                                          backgroundColor: e % 2 == 0
                                              ? Colors.red.shade100
                                              : Colors.green.shade100,
                                        ),
                                      ));
                                }).toList()),
                            Text(
                              yiShouList[index].price.toString() + "元/月",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ]),
                    );
                  }),
            ],
          ),
          bottomNavigationBar: BottomNavigationBarDemo(flag: '${loginY_N}',),
        ),
      ),
    );
  }
}
