


import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  // 여러 줄의 문자열 선언 방식 ''' '''
  String jsonStr = '''
  {
     "userId": 1,
     "id": 1,
     "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
     "body": "quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto"
  }
  ''';

  // 1 단계
  // JSON 문자열 형식을 Map 구조로 파싱 해보자.

  print('jsonMap :${json.decode(jsonStr)}');
  Map<String,dynamic> jsonMap = json.decode(jsonStr);
  jsonMap.forEach((key, value) {
    print('key $key');
    //
    // post = Post(value, value, value, value);
  });

  Post post = Post.fromJson(jsonMap);
  print('body : ${post.body}');
}
//함 수 설계

class Post{
int userId;
int id;
String title;
String body;

Post(this.userId, this.id, this.title, this.body);

  Post.fromJson(Map<String,dynamic> json)
      : userId = json["userId"],
id = json["id"],
title = json["title"],
body = json["body"];



}
