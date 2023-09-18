class Box<T> {
  T value;

  Box(this.value);

  T getValue() {
    return value;
  }
}

void main() {

  var stringBox = Box<String>("Hellom, Dart");

  print(stringBox.getValue());

  var intBox = Box<int>(50);
  print(intBox.getValue());

  var numbers=[1,2,3,4,5];
  var firstEven = findFirst(numbers, (n) => n % 2 == 0);
  print("first Even : $firstEven");


  var firstOdd = findOdd(numbers, (n) => n % 2 != 0);
  print("first Odd : $firstOdd");

  var last = findLastEven(numbers, (n) => n % 2 == 0);


  print("last Even : $last");

}

T? findFirst<T>(
List<T> items,bool Function(T) check
){
  var count = 0;

  for (var i in items) {
    // 처음부터 끝까지 반복 처리
  
    print('count : $count,item : $i');

    // check는 함수
    // check 함수는 어떤 데이터 타입이든 매개변수로 담을 수 있다
    // check 함수에 구현 부분은 사용 시점에 구현하고, 단 그 구현에 결과의
    // 데이터 타입은 bool 형태가 되어야 한다.
    if(check(i)){
      return i;

    }

    count++;
  }
  
  return null;

}

T? findOdd<T>(
List<T> items,bool Function(T) check
){
  var count = 0;

  for (var i in items) {
    // 처음부터 끝까지 반복 처리

    print('count : $count,item : $i');

    // check는 함수
    // check 함수는 어떤 데이터 타입이든 매개변수로 담을 수 있다
    // check 함수에 구현 부분은 사용 시점에 구현하고, 단 그 구현에 결과의
    // 데이터 타입은 bool 형태가 되어야 한다.
    if(check(i)){
      return i;

    }

    count++;
  }

  return null;

}

T? findLastEven<T>(List<T>items,bool Function(T) check){

  var count = 0;
  var number ;
  for(var i = items.length-1; i >= 0; i--){


    if(check(items[i])){

      return items[i];
    }


    count++;
  }
  return number;
}
