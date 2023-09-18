class Passbook{
  String? _name;
  String? _accountNumber;
  int? _accountBalance;



  String? get name => _name;

  set name(String? value) => _name = value;

  String? get accountNumber => _accountNumber;

  set accountNumber(String? value) =>_accountNumber = value;

  int? get accountBalance => _accountBalance;

  set accountBalance(int? value) => _accountBalance = value;


  //private 변수는 명명된 매개 변수로 만들 수 없음

  Passbook(this._name, this._accountNumber, this._accountBalance);

  void deposit(int money){


    _accountBalance = (_accountBalance ?? 0)+money;
    print('입금 완료');


  }

  int withdraw(int money){
    int? currentMoney = _accountBalance ?? 0 ;
    if(currentMoney < money){
      print('잔액부족');
      return 0;
    }else{
      currentMoney -= money;
      this._accountBalance =_accountBalance ;
      return money;

    }
    
  }


}