import 'package:flipkart/flipkart.dart';
import 'package:flipkart/flipkartdesc.dart';
import 'package:flipkart/flippro2.dart';
import 'package:flipkart/flippro3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter DEMO',
      theme: ThemeData(

      ),
      home:vivo(),
    );
  }
}

