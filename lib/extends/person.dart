class Person {
  String? name;
  int? age;

  void display() {
    print('name : $name');
    print('age : $age');
  }
}

class Student extends Person {
  String? schoolName;
  String? schoolAddress;

  // @override
  void display() {
    print('name : $name');
    print('age : $age');
    print('schoolName : $schoolName');
    print('schoolAddress : $schoolAddress');
  }

  void main(){
    Student student = Student();
    student.schoolAddress = ' 뭘로 하지 ?';
    student.schoolName = '흠';
    student.name =' 이름 ';
    student.age = 11;
  }
}
