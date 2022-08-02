/*import 'package:flutter/material.dart';

import '../feed.dart';

class LikeViewList extends StatelessWidget {
  List<Feed> feeds = [];

  //title
  //poster
  //keyword
  // 날짜는 나중에
  LikeViewList(List<Feed> feeds) {
    //★ if 좋아요 정리
    this.feeds = feeds;
  }

  @override
  Widget build(BuildContext context) {
    Column movieViews = Column(children: likeMovieList());
    //대충 ListView를 넣은 container 리턴
    return Container(child: movieViews);
  }

  //리스트 뷰?는 아니고 리스트 뷰에 들어갈 children
  List<Widget> likeMovieList() {
    List<Widget> results = [];

    for (int i = 0; i < feeds!.length; i++) {
      Text title = Text(feeds[i].title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
      Icon likeIcon = const Icon(Icons.favorite, color: Colors.red);

      //??배치관리자가 안됨
      Row titleRow = Row(
          children: [title, likeIcon],
          mainAxisAlignment: MainAxisAlignment.spaceBetween);

      //이미지
      Container image = Container(
          alignment: Alignment.center,
          width: 80,
          height: 100,
          child: Image.asset("images/" + feeds![i].imageUrl));

      //영화 제목 [맨 오른쪽에 좋아요], 설명
      Column column = Column(
        children: [
          Container(
            child: titleRow,
          ),
          Text(feeds![i].keyword,
              style: TextStyle(fontSize: 12, color: Color(0xffAAAAAA)))
        ],
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
      );

      Row row = Row(
          children: <Widget>[image, SizedBox(width: 16), column],
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic);

      //줄을 넣을까 말까 + ★ 좋아요 버튼
      Container container =
          Container(child: row, padding: EdgeInsets.only(bottom: 10));

      results.add(container);
    }
    //컨테이너 느낌으로 이미지, 메뉴를 넣음
    //그 놈을 리턴
    return results;
  }

//대충 위젯 리턴, if ImageAsset하면 되지 않을까
}
*/