import 'dart:ffi';
import 'dart:io';
import 'dart:math';

import 'package:flutter_v1/schoobus_and_student/student1.dart';
import 'package:flutter_v1/schoobus_and_student/bus.dart';
import 'package:flutter_v1/schoobus_and_student/roll.dart';

void main() {
  stdout.write('학생수 입력 : ');
  String? strNum = stdin.readLineSync();

  int intNum = int.parse(strNum!);

  Random random = Random();

  List<Student> list = [];
  for (var i = 0; i < intNum; ++i) {
    int randomMoney = 700 + random.nextInt(801);
    int randIndex = random.nextInt(2);

    Student student = Student(randomMoney, Roll.values[randIndex]);
    list.add(student);
  } // end of for

  print('버스가 도착했습니다.');
  SchoolBus schoolBus = SchoolBus();
  List<int> motherChanceList = schoolBus.motherChanceList(list);

    print('엄마 찬스를 사용한 학생의 수 ${motherChanceList.length}');
    stdout.write('엄마 찬스를 사용한 학생의 번호 : ');
  for (int i = 0; i < motherChanceList.length; ++i) {
    if(motherChanceList.length == i){
      stdout.write('${motherChanceList[i].toInt} ');
      break;
    }
    stdout.write('${motherChanceList[i].toInt()}, ');

  }
} // end of main
