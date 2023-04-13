import 'package:flutter/material.dart';

// class StateManagementDemo extends StatelessWidget {  //StatelessWidget 变量不可变
class StateManagementDemo extends StatefulWidget {
  int count = 0;

  @override
  State<StatefulWidget> createState() =>Demo();
}


class Demo extends State<StateManagementDemo> {

  void _callBack(){
    setState(() {
      widget.count +=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterInheritedDemo(
      count: widget.count,
      callback: _callBack,
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagement'),
          elevation: 1.0,
        ),
        body: CounterWrap(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _callBack
        ),
      ),
    );
  } 
}

class CounterWrap extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Counter()
    );
  }
}

class Counter extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final int? count = CounterInheritedDemo.of(context)?.count;
    var _callBack = CounterInheritedDemo.of(context)?.callback;
    return Center(
    child: ActionChip (label: Text('${count}'),onPressed: _callBack,)
    );
  }
}

class CounterInheritedDemo extends InheritedWidget {
  final int? count;
  final VoidCallback? callback;
  // final Widget child;

  CounterInheritedDemo({
    this.count,
    this.callback,
    required Widget child,
  }) : super(child: child);

  static CounterInheritedDemo? of(BuildContext context) => context.dependOnInheritedWidgetOfExactType(aspect:CounterInheritedDemo);

  @override
  bool updateShouldNotify(CounterInheritedDemo old) {
    return true;
  }
}
