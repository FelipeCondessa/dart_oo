
import 'dart:io';

import 'conta.dart';
import 'conta_corrente.dart';
import 'conta_poupanca.dart';

void main (){


Conta conta;

print('Tipo da conta:\n1. Conta Poupança\n2. Conta Corrente');

String escolha= stdin.readLineSync()!;

switch(escolha){
  case '1': 
          conta= ContaPoupanca();
          print('Conta Poupança criada sucesso');
  case '2':
          conta= ContaCorrente();
          print('Conta Corrente criada com sucesso');        
  default:
          print('opção inválida');
  return;
}

String opc= stdin.readLineSync()!;
while(opc != '4'){
  print('Selecione a operação que deseja realizar:\n 1. Consultar Saldo\n 2. Sacar\n 3. Depositar\n 4. Sair');

  opc= stdin.readLineSync()!;
  switch(opc){
    case '1': print('')
    exibirSaldo(conta);
      break;
    case '2' : saque(conta);
      break;
    case '3' : deposito(conta);
      break;
    case '4' : sair();
  }

  
}





}


exibirSaldo(Conta conta){
  print('Saldo ${conta.saldo}');
}

deposito(Conta conta){
  print('Digite o valor');
  double? valorDeposito= double.tryParse(stdin.readLineSync()!);
  if(valorDeposito != null){
  conta.depositar(valorDeposito);
} else {
  print('Valor inválido');
}
}

saque(Conta conta){
  print('Digite o valor');
  double? valorSaque= double.tryParse(stdin.readLineSync()!);
  if(valorSaque != null){
    if(conta.sacar(valorSaque)){
      print('Saque realizado');
    } else {
      print('Saldo insuficiente');
    } 
  } else {
  print('Operação inválida');
  }

}

sair(){
  print('Aplicação encerrada');
}
