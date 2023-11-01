

import 'conta.dart';

class ContaPoupanca implements Conta{

  double _saldo= 0;

@override
double get saldo{
  return _saldo;
}

@override
  depositar(double valor) {
    _saldo += valor;
  }

@override
bool sacar(double valor){
  if(valor <= _saldo){
    return true;
  } else {
    return false;
  }
}
}

