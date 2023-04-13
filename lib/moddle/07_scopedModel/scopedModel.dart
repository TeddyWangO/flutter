import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';



class ScopedModelDemo extends Model{
  int count =0;
  int getCount()=>count;
  void addCount(){
    count+=1;
    notifyListeners();
  }
}

class StateManagement_Scope_Demo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ScopedModelDemo(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagement'),
          elevation: 1.0,
        ),
        body: CounterWrap(),
        floatingActionButton: ScopedModelDescendant<ScopedModelDemo>(
            rebuildOnChange: false,
            builder: (context,_,model)=>FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: model.addCount)
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
    return ScopedModelDescendant<ScopedModelDemo>(builder: (context,_,model)=> ActionChip (label: Text('${model.count}'),onPressed: model.addCount,)

    );
  }
}

