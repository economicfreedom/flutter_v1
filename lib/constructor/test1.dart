class TestClass{
  String? test1;
  String? test2;
  String? test3;


  TestClass([this.test1,this.test2,this.test3]);
}
void main(){
  TestClass testClass = TestClass();
  print(testClass);
}