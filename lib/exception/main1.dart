import 'dart:html';

void main(){
  Exception exception;
  Error error;



  try{

    int result = 10 ~/0;
    print('result : $result');

  }catch(error,stackTrace){
    print('An error : $error');
    print('An stackTrace: $stackTrace');

  }finally{
    // 예외 발생 여부와 상관없이 항상 실행되는 코드
    print('반드시 실행되는 블록');
  }

}