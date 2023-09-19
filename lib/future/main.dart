// await를 가진 함수는 반드시 async를 선언 해줘야한다
void main() async{

  // 동기성 - 모든 코드가 순차적으로 진행되는 혀애
  // 비동기성 - 코드가 동시 다발적으로 실행, 순차적으로 보장을 할 수 없는 상태
  print('task 1 ....');
  var data1 = await fetchData(); // 기대값 2초 데이터
  // 실제 출력 값 : data1 : Instance of 'Future<String>'
  print(data1.runtimeType);
  print(data1);
  print('task 2 ....');
  print('task 3 ....');

}

Future<String> fetchData() {
  // 2초 뒤에 실행되는 코드를 작성

  // return Future.delayed(const Duration(seconds: 2), (){
  //
  //   return

  return Future.delayed(const Duration(seconds: 2), () => "2초 data");
}


