class Fruit{
  String name;
  int price;

  Fruit(this.name, this.price);

  void showInfo(){
    print('상품명 : $name');
    print('가격 : $price');
  }
}

//상속관계는 자식부터 설계
class Peach extends Fruit {
  Peach(super.name, super.price);

}



class Banana extends Fruit{
  String orignin;
  Banana(super.name, super.price,this.orignin);

}

void main(){
  // 업캐스팅, 다운캐스팅 의미를 알아보자

  List<Fruit> fruits = [Banana('델몬트바나나', 3000, '필리핀')
                       ,Peach('딱복', 5000)
  ];

  fruits[0].name;
  fruits[0].price;
  fruits[0].showInfo();
  (fruits[0] as Banana).orignin;
  // fruits[0].origin 컴파일 시점에 선언된 데이터 타입까지만 확인할 수 있다.

  // 업 캐스팅 된 상태 바나나에 origin 변수에 접근하고 싶다면 어떻게 해야 할까?
  // 컴파일 시점에  변환 처리를 하면 된다.


  // Banana banana1 = ((Banana) fruits[0]).origin; 자바에서 형변환 했던 방법
  Banana banana1 = fruits[0] as Banana; // 다운 캐스팅 상태
  print(banana1.orignin);

}