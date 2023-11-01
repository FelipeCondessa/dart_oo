import 'conta.dart';

class ContaCorrente implements Conta{

  double _saldo= 0;
  double _limite= 200;

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
  if(valor <= (_saldo + _limite)){
    _saldo -= valor;
    return true;
  } else {
    return false;
  }
}
}