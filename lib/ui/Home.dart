
import 'package:flutter/material.dart';
import 'package:mainapp/ui/lsi.dart';
// import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: admin() ,
    );
  }
}
