import 'package:flutter/material.dart';
import 'package:internationalization/helpers.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => new _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(trans(context, 'secondPage.Title')),
      ),
      body: new Center(
        child: new Text(trans(context, 'secondPage.Title')),
      ),
    );
  }
}
