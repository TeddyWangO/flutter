import 'dart:convert';
import '../demo_data/entity.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class Http_Demo extends StatelessWidget {
  const Http_Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http_Demo'),
        elevation: 2.0,
      ),
      body: Http_Demo_HOme(),
    );
  }
}

class Http_Demo_HOme extends StatefulWidget {
  const Http_Demo_HOme({Key? key}) : super(key: key);

  @override
  State<Http_Demo_HOme> createState() => _Http_Demo_HOmeState();
}

class _Http_Demo_HOmeState extends State<Http_Demo_HOme> {
  var aa = "qqqq";

  @override
  void initState() {
    super.initState();
  }

  Future<Entity> fetchPost() async {

    Response response;
    var dio = Dio();
    // response = await dio.get('https://www.wanandroid.com/user/logout/json');
    // print(response.data.toString());
    // response = await dio.get('https://www.wanandroid.com/user/logout/json', queryParameters: {'id': 12, 'name': 'wendu'});
    // print(response.data.toString());
    // response = await dio.post('https://www.wanandroid.com/user/login', data: {"username": "12", "password": "wendu"});
    // print(response.data.toString());
    // response = await dio.get('https://www.wanandroid.com/article/list/1/json');
    // print(response.data.toString());
    response = await dio.get("https://www.wanandroid.com/article/list/1/json");
    print("============${response.data["data"]["datas"][0]}");
    if (response.statusCode == 200) {
      Map<String, dynamic> result = response.data;
      Entity entity = Entity.fromJson(result);
      return entity;
    } else {
      throw Exception('Failed to fetch posts.');
    }
  }

  @override
  Widget build(BuildContext context) {
    createData3().then((value) {
      print("=========="+value.data);
      aa = value.data;
    });
    print("object");
    return FutureBuilder(
        future: fetchPost(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          print("object12312312");
          var entity = snapshot.data;
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text('loading...'),
            );
          }

          return ListView(
            children: [
              Text("curPage:${entity.curPage}"),
              Text("offset:${entity.offset}"),
              Text("over:${entity.over}"),
              Text("pageCount:${entity.pageCount}"),
              Text("size:${entity.size}"),
              Text("total:${entity.total}"),
              Text("datas:${entity.datas?[0]}"),
              ElevatedButton(
                  onPressed: () {
                    print("wo shi button");
                  },
                  style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(Colors.lightGreenAccent),
                  ),
                  child: Text("button")),
              IgnorePointer(
                child: TextButton(
                  onPressed: () {},
                  child: Text('按钮'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    side: MaterialStateProperty.all(
                        BorderSide(width: 1, color: Color(0xffCAD0DB))),
                    overlayColor:
                        MaterialStateProperty.all(Colors.lightGreenAccent),
                  ),
                ),
              ),
              Text('${aa} ')
            ],
          );
        });
  }
}


class DataWrapper {
  final String data;

  DataWrapper(this.data);

  @override
  String toString() {
    return 'DataWrapper{data: $data}';
  }
}

Future<String> _loadDataFromDisk() {
  return Future.delayed(Duration(seconds: 2), () => '1001');
}

Future<String> _requestNetworkData(String id) {
  return Future.delayed(
      Duration(seconds: 2), () => 'this is id:$id data from network');
}


Future<DataWrapper> createData() async {//createData添加async关键字，表示这是一个异步函数
  var id = await _loadDataFromDisk(); //await执行_loadDataFromDisk从磁盘中获取到id
  var data = await _requestNetworkData(id); //通过传入_loadDataFromDisk的id执行_requestNetworkData返回data
  return DataWrapper(data); //最后返回DataWrapper对象
}

Future<DataWrapper> createData2() {//由于是异步执行，所以注意返回的对象是一个Future
  return _loadDataFromDisk().then((id) {//需要在异步回调then函数中拿到id
    return _requestNetworkData(id);
  }).then((data) {//需要在异步回调then函数中拿到data
    return DataWrapper(data);//最后返回最终的DataWrapper
  });
}

Future<DataWrapper> createData3() {
  return _loadDataFromDisk().then((id) {
    return _requestNetworkData(id);
  }).then((data) {
    return DataWrapper(data);
  }).catchError((e) {//catchError捕获异常
    print('this is error: $e');
  }).whenComplete((){
    print('executed is done');
  });
}


