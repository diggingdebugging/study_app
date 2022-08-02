import 'package:flutter/material.dart';
import 'widget/bottom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5, // tab 개수
        child: Scaffold(
          backgroundColor: Colors.white,
          body: TabBarView(children: [
            Center(child: Text('홈페이지', style: TextStyle(fontSize: 30))),
            Center(child: Text('장소등록', style: TextStyle(fontSize: 30))),
            Center(child: Text('장소등록', style: TextStyle(fontSize: 30))),
            Center(child: Text('마이페이지', style: TextStyle(fontSize: 30))),
            Center(child: Text('더보기', style: TextStyle(fontSize: 30))),
          ]),
          bottomNavigationBar: Bottom(),
        ), // 가  장 기초가 되는 틀
      ),
    );
  }
}
