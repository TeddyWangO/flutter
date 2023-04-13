import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  const StreamDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream'),
        elevation: 1.0,
      ),
      body: StreamHome(),
    );
  }
}

class StreamHome extends StatefulWidget{

  @override
  State<StatefulWidget> createState()=> StreamChild();
}

class StreamChild extends State<StreamHome>{
  StreamSubscription? _streamSubscription;
  StreamController<String>? _streamController;
  StreamSink? _sinkDemo;
  String _data = '...';

  @override
  void dispose() {
    super.dispose();
    _streamController?.close();

  }

  @override
  void initState() {
    super.initState();
    debugPrint('创建Stream。。。');
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamController = StreamController<String>();
    _sinkDemo = _streamController?.sink;

    debugPrint('开始监听stream....');
    // _streamSubscription = _streamDemo.listen(onData,onDone: onDone,onError: onError);
    // _streamSubscription = _streamController?.stream.listen(onData,onDone: onDone,onError: onError);
    debugPrint('初始换完成');

  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds:5));
    // throw('error happend');
    return 'Hello ~~~';
  }

  void onData(String data){
    // setState(() {
    //   _data = data;
    // });
    debugPrint('$data');
  }
  void onDone(){
    debugPrint('Done');
  }
  void onError(error){
    debugPrint('Error:$error');
  }

  void _pauseStream(){ //暂停
    debugPrint('stream pause');
    _streamSubscription?.pause();
  }
  void _cancelStream(){ //取消
    debugPrint('stream cancel');
    _streamSubscription?.cancel();
  }
  void _resumeStream(){//启动
    debugPrint('stream resume');
    _streamSubscription?.resume();
  }
  void _addStream() async{//启动
    debugPrint('stream add');
    String data = await fetchData();
    // _streamController?.add(data);
    _sinkDemo?.add(data);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(_data),
            StreamBuilder<String>(
                stream:_streamController?.stream,
                // initialData: '...',
                builder:(BuildContext context,AsyncSnapshot<String> snapshot){return Text('${snapshot.data}');}),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: _addStream, child: Text('Add')),
                ElevatedButton(onPressed: _pauseStream, child: Text('Pause')),
                ElevatedButton(onPressed: _resumeStream, child: Text('Resume')),
                ElevatedButton(onPressed: _cancelStream, child: Text('Cancel')),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
