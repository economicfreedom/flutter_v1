import 'package:http/http.dart' as http;
void main() {
  fetchTodo().then((res){
    print("http status code : ${res.statusCode}");
    print("http Message Header : ${res.headers}");
    print("http status Body : ${res.body}");
    print("http status Request : ${res.request}");

  });

  fetchTodoList().then((res) {
    print(res.body);
  });
}
//함 수 설계
Future<http.Response>fetchTodo() async{

  const url = "https://jsonplaceholder.typicode.com/posts/3";
  // get 메서드 안에는 객체를 만들어서 던져야 한다.
  var response = await http.get(Uri.parse(url));

  print(response.body);
  return response;
}
Future<http.Response>fetchTodoList() async{

  const url = "https://jsonplaceholder.typicode.com/todos";
  // get 메서드 안에는 객체를 만들어서 던져야 한다.
  var response = await http.get(Uri.parse(url));


  return response;
}

class Todo{
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todo(this.userId, this.id, this.title, this.completed);
}