void main(){
  Employee employee1 = Employee("홍길동", 30);

  employee1.display();
  print('-------------------');
  Employee  employee2 = Employee("이순신", 50,"IT",9000);
  employee2.display();
}

class Employee{
  String? name,subject;
  int? age;
  double? salary;

  // 1 단계
  // 생성자 안에 [] - 옵션 값이다. 즉 받아도 되고 , 안 받아도 되는 값들을 설정할 수 있다.
  // Employee(this.name,this.age,[this.subject,this.salary]);

  // 2 단계
  // 생성자 옵션값에 기본값을 할당 할 수 있다
  Employee(this.name,this.age,[this.subject="N/A",this.salary=0.0]);

  void display(){
    print('Name : ${this.name}');
    print('age : ${this.age}');
    print('subjects : ${this.subject}');
    print('salary : ${this.salary}');
  }

}