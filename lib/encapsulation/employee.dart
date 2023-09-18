class Employye{
  // 변수를 private  선언 방법 _ 언더 스코어를 사용한다.
  int? _id; // private 속성 이다.
  String? _name;

  void setId(int id){
    this._id = id;
  }
  void setName(String name){
    this._name = name;
  }

  int getId(){
    return _id!;
  }
  String getName(){
    return _name!;
  }

  // int get id => _id!;
  //
  // set id(int value) {
  //   _id = value;
  // }
  //
  // String get name => _name!;
  //
  // set name(String value) {
  //   _name = value;
  // }
}
