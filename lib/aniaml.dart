abstract class Animal {

  void eyesColor();

  void sound();

  void weight();

  void working() {
    print('앞으로 나아갑니다.');
  }
}

class Lion extends Animal {
  @override
  void sound() {
    print('어흥');
  }

  @override
  void weight() {
    print('200kg');
  }





  @override
  void eyesColor() {
    print('갈색');
  }



}
void main(){
  Animal lion = Lion();
  lion.working();
  lion.eyesColor();

}
