import 'package:intl/intl.dart';

void main() {
  final conta = ContaBancaria();

  print("Conta aberta em ${conta.dataAbertura}");

  conta.depositar(100.0);
  print("Saldo após depósito: ${conta.saldo}");

  conta.sacar(50.0);
  print("Saldo após saque: ${conta.saldo}");

  conta.sacar(200.0);
  print("Saldo após saque: ${conta.saldo}");
}

class ContaBancaria {
  double _saldo;
  final DateTime _dataAbertura;

  ContaBancaria() :
    _saldo = 0.0,
    _dataAbertura = DateTime.now();

  double get saldo => _saldo;
  set saldo(double valor) => _saldo = valor;

  String get dataAbertura => DateFormat('dd/MM/yyyy').format(_dataAbertura);

  void depositar(double valor) {
    _saldo += valor;
  }

  void sacar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
    } else {
      print("Saldo insuficiente");
    }
  }
}
