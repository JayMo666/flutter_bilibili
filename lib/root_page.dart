import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  RootPage({Key key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

const Map<String, String> _bottomNames = {
  'home': '首页',
  'music': '音乐',
  'create_media': '',
  'tiny_video': '小视频',
  'profile': '我的'
};

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;
  final List<BottomNavigationBarItem> _bottomNavBarList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bottomNames.forEach((key, value) {
      _bottomNavBarList.add(_bottomNavBarItem(key, value));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Text('首页'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: _bottomNavBarList,
          currentIndex: _currentIndex,
          onTap: _onTabClick,
        ),
        floatingActionButton: _createMediaButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      ),
    );
  }

  void _onTabClick(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  BottomNavigationBarItem _bottomNavBarItem(String key, String value) {
    return BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/icons/${key}.png',
          width: 24,
          height: 24,
        ),
        activeIcon: Image.asset(
          'assets/images/icons/${key}_active.png',
          width: 24,
          height: 24,
        ),
        label: value);
  }

  FloatingActionButton _createMediaButton() {
    return FloatingActionButton(
      child: Image.asset(
        'assets/images/icons/create_media.png',
        width: 48,
        height: 48,
      ),
      onPressed: () {},
    );
  }
}
