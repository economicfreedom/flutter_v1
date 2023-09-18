class Student{
  // 1. 이름, 나이 -> private 선언
  // 2. 축약형 get, set 메서드를 만들어야함

  String? _name;
  int? _age;

  Student(this._name, this._age);

  set name (String value) => _name = value;


  set age(int? age) {
    if(age! < 0 ){
      age = 0;
      print('음수는 입력 불가능');
    }
    _age = age;
  }
  String get name => _name!;
  int get age => _age!;
}