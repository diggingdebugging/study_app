class StudyPlace {
  //공부 장소 모델
  final String title; // 장소 이름
  final String keyword; //장소 키워드
  final String image; // 장소 이미지
  final bool like; // 좋아요

  StudyPlace.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        keyword = map['keyword'],
        image = map['image'],
        like = map['like'];
  @override
  String toString() => "Movie<$title:$keyword>";
}
