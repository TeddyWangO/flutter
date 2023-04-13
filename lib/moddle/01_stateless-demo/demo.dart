import 'package:flutter/material.dart';
import 'demo-listview.dart';
import 'demo-chouti.dart';
import 'demo-bottomNavigationBar.dart';
import '../02_stateful/demo_stateful.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
          primarySwatch: Colors.lightGreen, //主题
          highlightColor: Colors.green, //点击高亮
          splashColor: Colors.green //水波纹
          ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: '菜单',
          //   onPressed: ()=> debugPrint("菜单被选中"),
          // )
          centerTitle: true,
          //标题居中
          title: const Text(' '),
          actions: [
            IconButton(
              onPressed: () => debugPrint("搜索被选中"),
              icon: Icon(Icons.search),
              tooltip: "搜索",
            )
          ],
          elevation: 40.0,
          //阴影
          bottom: const TabBar(
            unselectedLabelColor: Colors.grey,
            //选中标签状态
            indicatorColor: Colors.amber,
            //选中标签的下划线颜色
            indicatorSize: TabBarIndicatorSize.tab,
            //下划线的长度
            indicatorWeight: 2.0,
            tabs: [
              Tab(
                icon: Icon(Icons.leaderboard),
              ),
              Tab(
                icon: Icon(Icons.local_florist),
              ),
              Tab(
                icon: Icon(Icons.change_history_outlined),
              ),
              Tab(
                icon: Icon(Icons.directions),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Listview(),
            Icon(
              Icons.local_florist,
              size: 100.0,
              color: Colors.red,
            ),
            Icon(
              Icons.change_history_outlined,
              size: 100.0,
              color: Colors.greenAccent,
            ),
            Icon(
              Icons.directions,
              size: 100.0,
              color: Colors.amber,
            )
          ],
        ),
        // drawer: Text("抽屉"), //左边抽屉
        // endDrawer: Text("抽屉"),//右边抽屉
        // drawer: Container(
        //   color:Colors.cyanAccent,
        //   padding: EdgeInsets.all(8.0),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text("这是一个抽屉")
        //     ],
        //   ),
        // ),
        drawer:Chouti(), //抽屉
        // bottomNavigationBar:T_bottomNavigationbar(),
        bottomNavigationBar:BottomNavigationBarDemo(),//(StatelessWidget && StatefulWidget)合在一起用
      ),
    );
  }
}
