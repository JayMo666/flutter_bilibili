import 'package:flutter/material.dart';
import 'package:flutter_bilibili/view/root_pages/home_page.dart';
import 'package:flutter_bilibili/view/root_pages/music_page.dart';
import 'package:flutter_bilibili/view/root_pages/profile.dart';
import 'package:flutter_bilibili/view/root_pages/tiny_video.dart';

class RootPage extends StatefulWidget {
  RootPage({Key key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

const Map<String, String> _bottomNames = {
  'home': '首页',
  'music': '音乐',
  'create_media': '创建',
  'tiny_video': '小视频',
  'profile': '我的'
};

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;
  // 页面
  final List<Widget> _pages = [
    HomePage(),
    MusicPage(),
    Container(),
    TinyVideo(),
    ProFile(),
  ];
  final List<BottomNavigationBarItem> _bottomNavBarList = [];
  @override
  void initState() {
    super.initState();
    _bottomNames.forEach((key, value) {
      _bottomNavBarList.add(_bottomNavBarItem(key, value));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: _bottomNavBarList,
          currentIndex: _currentIndex,
          onTap: _onTabClick,
          type: BottomNavigationBarType.fixed,
        ),
        // floatingActionButton: _createMediaButton(),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
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
        'assets/images/icons/$key.png',
        width: 24,
        height: 24,
      ),
      activeIcon: Image.asset(
        'assets/images/icons/${key}_active.png',
        width: 24,
        height: 24,
      ),
      label: value,
      tooltip: '',
    );
  }

  // FloatingActionButton _createMediaButton() {
  //   return FloatingActionButton(
  //     child: Image.asset(
  //       'assets/images/icons/create_media.png',
  //       width: 48,
  //       height: 48,
  //     ),
  //     onPressed: () {},
  //   );
  // }
}
