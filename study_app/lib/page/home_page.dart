import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_app/mdoel/model_studyplace.dart';
import '../sortdown_button.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<StudyPlace> studyPlaces = [ // 더미 데이터
      StudyPlace.fromMap({
        'title' : '그라찌에',
        'keyword' : '카페/한성대/성북구',
        'image' : 'cafe.jpg',
        'like' : false
      })
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: Icon(CupertinoIcons.search, color: Colors.white),
              onPressed: () {
                print("search");
              },
            ),
            IconButton(
              icon: Icon(CupertinoIcons.map, color: Colors.white),
              onPressed: () {
                print("map");
              },
            )
          ],
        ),
        body: Column(
          children: [
            sortDownButton(),
            //SizedBox(),
            Container(
              height: 450,
              child: ListView.builder(
                itemCount: studyPlaces.length, // 이미지 개수만큼 보여주기
                itemBuilder: (context, index) {
                  return 
                },
              ),
            ),
          ],
        ));
  }
}



