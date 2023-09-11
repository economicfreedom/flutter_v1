import 'package:flutter_v1/schoobus_and_student/student1.dart';
import 'package:flutter_v1/schoobus_and_student/roll.dart';

class SchoolBus {
  static const int middleFare = 900;
  static const int highFare = 1200;

  bool _fareChecker(Student student) {
    switch (student.roll) {
      case Roll.high:
        if (  highFare>student.money) {
          print('요금이 부족합니다');
          student.motherChance(highFare);
          return true;
        } else {
          return false;
        }

      case Roll.middle:
        if (middleFare >student.money  ) {
          print('요금이 부족합니다');
          student.motherChance(middleFare);
          return true;
        } else {
          print('${student.roll} 학생이 탑승했습니다.');
          return false;
        }
    }

  }
  List<int> motherChanceList(List<Student> list){
    List<int>usedChanceList = [];
  for (int i = 0; i < list.length; i++) {
    print('탑승하는 학생의 번호 : $i');
    if (_fareChecker(list[i])) {
      usedChanceList.add(i);
      i--;
      continue;
    }

  }
    return usedChanceList;
  }

}
