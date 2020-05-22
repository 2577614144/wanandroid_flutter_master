import 'package:flutter/material.dart';

class PublicSubscriptionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PublicSubscriptionState();
  }
}

class PublicSubscriptionState extends State<PublicSubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          child: Text('3'),
        ),
        label: Text('我是公众号页面'),
      ),
    );
  }
}
