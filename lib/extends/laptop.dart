// 도전 과제
// laptop 클래스 설계 - 멤버 데이터 name , color
// 생성자 정의 name, color

abstract class Laptop{

  String? name;
  String? color;


  Laptop(this.name, this.color);

  void on(){
    print('전원을 킵니다');
    _showDisplay();
  }

  void off(Laptop laptop){

    print('$name:전원을 끕니다');

  }

  void _showDisplay(){
    print('화면이 켜집니다');
  }

  void connectionAdepter(){
    print('배터리를 충전합니다');
  }




}

class Macbook extends Laptop{

  Macbook(name,color): super(name,color){
    on();
    print("초기화 이니셜라이즈에 body를 붙여서 추가할 수 있다");

  }

  @override
  void on(){
    print('$name의 :전원을 킵니다');
    _showDisplay();
  }

}
void main(){
  Laptop mac = Macbook("MacBook Pro", "Space Green");
  mac.off(mac);
  
}