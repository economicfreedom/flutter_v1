import 'dart:io';

class Employee{

  static final Employee  _instance = Employee._test("test",1);


  String? name;
  static int nextEmployeeNumber =1000;
  int eNum=0;
  Employee(String name){
    this.name = name;
    eNumberPlus();

  }

  void eNumberPlus() {
    eNum = nextEmployeeNumber;
    nextEmployeeNumber++;
  }


  static Employee getInstance (){

    return _instance;
  }

  Employee._test(this.name, this.eNum);


  // 메서드는 멤버 변수를 활용해서 기능을 구현한다
  void display(){
    print('이름 : $name');
    print("사원 번호 :${eNum} ");
  }

}

void main(){

  Employee employee1 = Employee("규하1");
  Employee employee2 = Employee("규하2");
  Employee employee3 = Employee("규하3");
  employee1.display();
  employee2.display();
  employee3.display();

  Employee employee4 = Employee.getInstance();


  // 제약 조건
  // Employee 클래스 안에 사원 번호 데이터를 받는 변수를 선언 하시오
  // 단, Employee 인스턴스화 되면(객체) 사원 번호는 자동으로 1 씩 증가할 수 있도록
  // 만들어주세요

  print(Employee.nextEmployeeNumber);
  print(Employee.nextEmployeeNumber);
  print(Employee.nextEmployeeNumber);
}