import 'package:flutter/material.dart';

class tinyVideo extends StatefulWidget {
  tinyVideo({Key key}) : super(key: key);

  @override
  _tinyVideoState createState() => _tinyVideoState();
}

class _tinyVideoState extends State<tinyVideo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Tiny Video'),
    );
  }
}
