import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class Bloc_Demo extends StatelessWidget {
  const Bloc_Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      bloc: CounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Bloc'),
          elevation: 1.0,
        ),
        body: Bloc_DemoHome(),
        floatingActionButton: ActionButtom(),
      ),
    );
  }
}

class Bloc_DemoHome extends StatelessWidget {
  const Bloc_DemoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterBloc? counterBloc = CounterProvider.of(context).bloc;

    return StreamBuilder<int>(
      initialData: 0,
      stream: counterBloc?.counte,
      builder: (context,snapshot){
        return Center(
          child: ActionChip(
            label: Text('${snapshot.data}'),
            onPressed: (){
              counterBloc?.log();
              counterBloc?.counter.add(1);
            },
          ),
    );},);
  }
}

class ActionButtom extends StatelessWidget {
  const ActionButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterBloc? bloc = CounterProvider.of(context).bloc;
    return FloatingActionButton(
      onPressed: (){
        bloc?.log();
        bloc?.counter.add(1);
      },
      child: Icon(Icons.add),
    );
  }
}

class CounterProvider extends InheritedWidget {
  final CounterBloc? bloc;

  const CounterProvider({
    this.bloc,
    required Widget child,
  }) : super(child: child);

  static CounterProvider of(BuildContext context) {
    final CounterProvider? result =
        context.dependOnInheritedWidgetOfExactType<CounterProvider>();
    assert(result != null, 'No CounterProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(CounterProvider old) {
    return true;
  }
}

class CounterBloc{
  int count = 0;
  final _streamCotroller = StreamController<int>();
  StreamSink<int> get counter => _streamCotroller.sink;

  final _controllCounter = StreamController<int>();
  Stream<int> get counte => _controllCounter.stream;

  CounterBloc(){
    _streamCotroller.stream.listen(ondata);
  }
  void ondata(int data){
    print("$data");
    count = data + count;
    _controllCounter.add(count);

  }
  void disponse(){
    _streamCotroller.close();
    _controllCounter.close();
  }
  void log(){
    print("Bloc");
  }
}
