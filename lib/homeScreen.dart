
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  static const String routeName="home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('ahmad'),),
    );

  }
}