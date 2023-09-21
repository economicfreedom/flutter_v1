import 'dart:html';

void main(){

  try{
    throw Exception('Unknown Error');

  }catch(e,s){
    print('예외 발생 : $e');
  }

  print(" end of code");

  try {
    throw TypeError();
  } on TypeError {
    print('type Error 에러 처리');
  }catch(e,s){
    print('모든 예외 처리');

  }
}