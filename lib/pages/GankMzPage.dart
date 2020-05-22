import 'package:flutter/material.dart';

class GankMzPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return GankMzPageState();
    
  }
}

class GankMzPageState extends State<GankMzPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          child: Text('2'),
        ),
        label: Text('我是福利页面'),
      ),
    );
  }
}