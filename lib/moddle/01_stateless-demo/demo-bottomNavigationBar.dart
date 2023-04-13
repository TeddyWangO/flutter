import 'package:flutter/material.dart';

class T_bottomNavigationbar extends StatelessWidget{

  int _currentIndex = 0;

  void _onTapHandle(int index){
    _currentIndex = index;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(//底部导航栏，默认3个组件
      type: BottomNavigationBarType.fixed,//设置可放导航组件的个数，可超过3个
      fixedColor: Colors.black ,//激活状态的背景色
      currentIndex:  _currentIndex, //指定激活组件
      onTap: _onTapHandle,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: ('Explore')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: ('History')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: ('List')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('My')
        ),
      ],
    );
  }
}