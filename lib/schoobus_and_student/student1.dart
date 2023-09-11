 import 'package:flutter_v1/schoobus_and_student/bus.dart';
import 'package:flutter_v1/schoobus_and_student/roll.dart';

class Student{

  Roll roll;
  int money;

  Student(this.money, this.roll);



  void motherChance(int fare){
    int money = fare - this.money;
    print('엄마찬스를 씁니다.');
    print('중고등학생중 어떤거? : ${this.roll}');
    print('현재 수중에 가진 돈 : ${this.money}');
    this.money += money;
    print('돈충전');
    print('충전된 후 금액 :${this.money}');
  }

}