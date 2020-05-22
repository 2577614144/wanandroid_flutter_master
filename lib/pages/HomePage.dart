import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          child: Text('1'),
        ),
        label: Text('我是主页面'),
      ),
    );
  }
}