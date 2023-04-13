import 'package:flutter/material.dart';//
import '../04_form_demo/formDemo.dart';
import '../04_form_demo/loginDemo.dart';

class BottomNavigationBarDemo extends StatefulWidget{
  var flag;
  BottomNavigationBarDemo({this.flag});

  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemo();
  }
}
class _BottomNavigationBarDemo extends State<BottomNavigationBarDemo>{
  int _currentIndex = 0;

  void _onTapHandle(int index){
    setState(() {
      _currentIndex = index;
      print('index:$index');
      // debugPrint("11111111111111111111${widget.flag}");
    });
    if(index == 0 && widget.flag == 'true'){
      // debugPrint("11111111111111111111${widget.flag}");
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>FormDemo()));
    }else{
      // debugPrint("11111111111111111111${widget.flag}");
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
                    Navigator.of(context).pop();
                  },
                ),
                ElevatedButton(
                  child: Text("OK"),
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
  }
  @override
  Widget build(BuildContext context) {

     return BottomNavigationBar(//底部导航栏，默认3个组件
      type: BottomNavigationBarType.fixed,//设置可放导航组件的个数，可超过3个
      fixedColor: Colors.black ,//激活状态的背景色
      currentIndex:  _currentIndex, //指定激活组件
       onTap: _onTapHandle,

      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('首页'),

        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ('搜索')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: ('咨询')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('我的')
        ),
      ],
    );
  }
}
