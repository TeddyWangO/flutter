import 'package:flutter/material.dart';
import 'package:mz_back_plugin/mz_back_plugin.dart';
class _WillPop extends StatefulWidget {
  const _WillPop({Key? key}) : super(key: key);

  @override
  State<_WillPop> createState() => _WillPopState();
}

class _WillPopState extends State<_WillPop> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: Scaffold(), onWillPop: _onWillPop);
  }
}

Future<bool> _onWillPop() {
  MzBackPlugin.navigateToSystemHome();
  return Future.value(false);
}