import 'dart:js_interop';

import 'package:http/http.dart' as http;
import 'dart:convert';
void main() {

  posts().then((res) {
    print('res body ${res.body}');
  });


}
//함 수 설계


Future<http.Response> posts() async{

  const url = "https://jsonplaceholder.typicode.com/posts/1/comments";
  var response = await http.get(Uri.parse(url));

  return response;

}



