import 'package:flutter/material.dart';
import 'package:flutter_bilibili/transit_page.dart';
import 'config/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'bilibili',
        debugShowCheckedModeBanner: false,
        theme: themeData,
        home: TransitPage());
  }
}
