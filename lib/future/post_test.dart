import 'dart:convert';

import 'package:http/http.dart' as http;
void main() async{
  
  var url =Uri.https('jsonplaceholder.typicode.com','posts');
  var response = await http.post(url,body:jsonEncode({
    'title':'밥 머먹지?',
    'body':'bar',
    'userId':1,
  })
  );


  print(response.statusCode);
  
}