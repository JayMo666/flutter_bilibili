import 'package:flutter/material.dart';

class TinyVideo extends StatefulWidget {
  TinyVideo({Key key}) : super(key: key);

  @override
  _TinyVideoState createState() => _TinyVideoState();
}

class _TinyVideoState extends State<TinyVideo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Tiny Video'),
    );
  }
}
