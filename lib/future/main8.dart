import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'dart:convert';

// 파싱 기술 1 - map 구조 변환
// 파싱 기술 2 - 클래스 설계
void main() {

  String jsonStr =
  '''
  {
  "id": 1,
  "name": "Leanne Graham",
  "username": "Bret",
  "email": "Sincere@april.biz",
  "address": {
    "street": "Kulas Light",
    "suite": "Apt. 556",
    "city": "Gwenborough",
    "zipcode": "92998-3874",
    "geo": {
      "lat": "-37.3159",
      "lng": "81.1496"
    }
  },
  "phone": "1-770-736-8031 x56442",
  "website": "hildegard.org",
  "company": {
    "name": "Romaguera-Crona",
    "catchPhrase": "Multi-layered client-server neural-net",
    "bs": "harness real-time e-markets"
  }
}
  ''';

  String testStr = test().then((value) {
    return value.body.toString();
  }).toString();
  String test2;

 test2 = '''
 ${testStr}
 ''';
  Map<String, dynamic> jsonMap = json.decode(jsonStr);

  User user = User.formatJson(jsonMap);
  print(user.company.name);
  print(user.address.geo.lat);
  print(user.address.street);
}

class User {
  int id;
  String name;
  String username;
  String phone;
  String website;
  Company company;
  Address address;
  User.formatJson(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        username = map["username"],
        phone = map["phone"],
        website = map["website"],
        company = Company.formatJson(map["company"]),
  address = Address.formatJson(map["address"]);
}

class Address {
  String street;
  String suite;
  String city;
  String zipcode;

  Geo geo;

  Address.formatJson(Map<String, dynamic> map)
      : street = map["street"],
        suite = map["suite"],
        city = map["city"],
        zipcode = map["zipcode"],
        geo = Geo.formatJson(map["geo"]);
}

class Geo {
  String lat;
  String lng;

  Geo.formatJson(Map<String, dynamic> map)
      : lat = map["lat"],
        lng = map["lng"];
}

class Company {
  String name;
  String catchPhrase;
  String bs;

  Company.formatJson(Map<String, dynamic> map)
      : name = map["name"],
        catchPhrase = map["catchPhrase"],
        bs = map["bs"];
}

Future<http.Response> test() async {
  const url = "https://jsonplaceholder.typicode.com/users/1";
  var response = await http.get(Uri.parse(url));

  return response;
}

