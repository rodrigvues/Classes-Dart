class Conta{
  double saldo = 1000;
  double _saque = 0;

  double get saque{
    if (_saque > saldo) {
      print("Erro: O valor do saque não pode ser maior que o saldo disponível.");
      return saldo;
    }
    // validação vai aqui
    return this._saque;
  }
  set saque(double saque){
    if (saque <= saldo) {
      this._saque = saque;
    } else {
      print("Erro: Tentativa de saque maior que o saldo disponível.");
    }
  }
}

void main() {
  Conta conta = Conta();
  conta.saque = 2000;

  print("O valor do saque foi de ${conta.saque}");
}