void main() {
  Rectangle rectangle = Rectangle();

  try {
    double result = rectangle.calculateArea();

    print('직사각형의 넓이는  : $result');
  } catch (e) {
    print('에러 확인 : $e');
  }

  print('=====================');
  print('여기가 실행이 될까요?');
  

}

class Rectangle {
  double? width; // null 허용 가능
  double? height;

  double calculateArea() {
    if (width == null) this.width = 0.0;

    if (height == null) this.height = 0.0;

    return width! * height!; // 개발자가 명시적으로 ! null이 아니다 명시 할 수 있음
  }
}
