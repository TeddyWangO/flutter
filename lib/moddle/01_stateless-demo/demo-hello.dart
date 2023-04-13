import 'package:flutter/material.dart';
class Hello extends StatelessWidget{
  const Hello({super.key});


  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello,flutter',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Colors.red,
          fontSize: 40.0,
          fontWeight: FontWeight.bold,

        ),
      ),
    );
  }
}