import 'package:flutter/material.dart';
import 'package:flutter_bilibili/models/song_model.dart';
import 'package:flutter_bilibili/services/song_service.dart';

class SongPage extends StatefulWidget {
  SongPage({Key key}) : super(key: key);

  @override
  _SongPageState createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  List<SongItem> _songList = SongList([]).list;
  int page = 1;
  int limit = 10;
  bool hasMore = true;
  bool error = false;
  String errorMsg = '';
  @override
  void initState() {
    super.initState();
    _getSongs();
  }

  Future _getSongs({bool isPush = false}) async {
    try {
      Map<String, dynamic> result = await SongService.getSongs(page: page);
      SongList songListModel = SongList.fromJson(result['data']);
      setState(() {
        hasMore = page * limit < result['total'];
        page++;
        if (isPush) {
          _songList.addAll(songListModel.list);
        } else {
          _songList = songListModel.list;
        }
      });
    } catch (e) {
      setState(() {
        error = true;
        errorMsg = e.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _songList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 80,
          color: Colors.black.withOpacity(index / 10),
        );
      },
    );
  }
}
