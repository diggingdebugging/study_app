/*//Like Screen
import 'package:flutter/material.dart';
import 'package:study_app/page/like_page.dart';

import 'feed.dart';

class LikeScreen extends StatelessWidget {
  List<Feed> feeds = [];
  LikeScreen(List<Feed> feeds) {
    for (int i = 0; i < feeds.length; i++)
      if (feeds[i].like) {
        //동적 메모리 할당
        Feed feed = feeds[i];
        this.feeds.add(feed);
      }
  } //생성자 람다?

  @override
  Widget build(BuildContext context) {
    Container container = Container(child: LikeViewList(feeds));
    return container;
  }
}
*/