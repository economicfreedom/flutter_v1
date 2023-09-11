class Bicycle{
  String? color;
  int? size;
  int? currentSpeed;

  // 기능 - 동사로 시작을 권장

  void changeGear(int gear){
    currentSpeed = gear;

  }

    Bicycle() {
    print("기본 생성자 호출이 될까요?");
  }

  void showInfo(){
    print('Color : $color');
    print('Size : $size');
    print('Current Speed : $currentSpeed');


  }

  @override
  String toString() {
    return 'Bicycle{color: $color, size: $size, currentSpeed: $currentSpeed}';
  }

}
