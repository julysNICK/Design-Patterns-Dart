abstract class ImpostoStrategy {
  void calcImposto();
}

class ImpostoBr extends ImpostoStrategy {
  @override
  void calcImposto() {
    print("imposto br");
  }
}

class ImpostoEua extends ImpostoStrategy {
  @override
  void calcImposto() {
    print("imposto eua");
  }
}

class Venda {
  ImpostoStrategy _impostoStrategy;
  Venda(this._impostoStrategy);

  void realizarVenda() {
    _impostoStrategy.calcImposto();
  }
}

void main(List<String> args) {
  Venda venda = Venda(ImpostoEua());
  venda.realizarVenda();
}
