import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';

class HttpDemo extends StatelessWidget {
  const HttpDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http'),
        elevation: 1.0,
      ),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  const HttpDemoHome({Key? key}) : super(key: key);

  @override
  State<HttpDemoHome> createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    super.initState();
    fetchPost();
  }

  fetchPost(){

  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
