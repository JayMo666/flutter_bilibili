import 'package:flutter/material.dart';
import 'package:flutter_bilibili/components/roo_page_head.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

const List<Tab> _tabs = [
  Tab(text: '歌曲'),
  Tab(text: '推荐'),
  Tab(text: '歌手'),
  Tab(text: '小视频'),
  Tab(text: '文章'),
  Tab(text: '视频'),
];

final List<Widget> _tabsContent = [
  Text('歌曲'),
  Text('歌曲'),
  Text('歌曲'),
  Text('歌曲'),
  Text('歌曲'),
  Text('歌曲'),
];

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      length: _tabs.length,
      initialIndex: 1,
      vsync: this,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: RootPageHead(),
          bottom: TabBar(
            tabs: _tabs,
            controller: _tabController,
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: _tabsContent,
          controller: _tabController,
        ));
  }
}
