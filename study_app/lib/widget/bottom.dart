import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  // main에서 Scaffold()의 bottomNavigationBar자리에 들어갈 위젯
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.blue,
      tabs: [
        Tab(text: '홈', icon: Icon(Icons.home)),
        Tab(text: '좋아요', icon: Icon(Icons.favorite)),
        Tab(text: '장소등록', icon: Icon(Icons.add_circle)),
        Tab(text: '마이페이지', icon: Icon(Icons.account_circle)),
        Tab(text: '더보기', icon: Icon(Icons.list)),
      ],
    );
  }
}
