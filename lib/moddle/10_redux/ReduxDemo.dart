import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';


enum Actions { Increment }
int counterReducer(state, action) {
  if (action == Actions.Increment) {
    return state + 1;
  }
  return state;
}

void main() {
  final store = Store<int>(( state, action) {
    if(action == Actions.Increment) {
      return  state + 1;
    }
    return state;
  },initialState: 0);

  runApp(new MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<int>  store;
  MyApp({required this.store});
  @override
  Widget build(BuildContext context) {
    //将 Redux Store传递给它的子Widget
    return StoreProvider<int>(
        store: store,
        child: MaterialApp(
          home: MyHome(),
        ));
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello"),elevation: 10.0,),

      floatingActionButton: StoreConnector<int, VoidCallback>(
        //将Action进行分发
        converter: (store) => () => store.dispatch(Actions.Increment),
        builder: (context, cb) =>
            FloatingActionButton(
              onPressed: cb,
              child: Icon(Icons.add),
            ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //能够接收store
          StoreConnector<int, String>(
            converter: (store) => store.state.toString(),
            builder: (context, count) {
              return Center(child: Text('$count'),);
            },
          )
        ],
      ),
    );
  }
}