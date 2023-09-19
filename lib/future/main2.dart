void main() async{

  // Future ( 미래 타입 ) 을 선언해 보자
  // 왜 텐코딩이지?
  Future<String> name = Future.value("텐코딩");
  Future<int> age = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  print(name);
  print(age);
  print(isTrue);

  // Future 타입을 소화 시키는 방법
  // 방법 1. await와 async를 사용
  // 의문 왜 비동기 프로그래밍을 작성해두고 굳이 다시 동기화 시키는거지?
  print(await name);
  print(await age);
  print(await isTrue);
}
