abstract class ImpostoStrategy {
  void _calcularImposto();
}

class ImpostoEua extends ImpostoStrategy {
  void _calcularImposto() {
    print('ImpostoEua');
  }
}

class ImpostoBrasil extends ImpostoStrategy {
  void _calcularImposto() {
    print('ImpostoBrasil');
  }
}

class ImpostoCanada extends ImpostoStrategy {
  void _calcularImposto() {
    print('ImpostoCanada');
  }
}

class PedidoVenda {
  ImpostoStrategy _impostoStrategy;
  PedidoVenda(this._impostoStrategy);
  void evetuarVenda() {
    _impostoStrategy._calcularImposto();
  }
}

void main() {
  PedidoVenda pedidoVenda = new PedidoVenda(new ImpostoEua());
  pedidoVenda.evetuarVenda();
  pedidoVenda = new PedidoVenda(new ImpostoBrasil());
  pedidoVenda.evetuarVenda();
  pedidoVenda = new PedidoVenda(new ImpostoCanada());
  pedidoVenda.evetuarVenda();
}
