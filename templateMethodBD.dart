abstract class AbstractClass {
  String detalhesEspecifico();
  String hookMethod1() => 'Em comum nos dois bancos';

  void efetuarConsulta() {
    print('AbstractClass says: I am doing the bulk of the work');
    print(detalhesEspecifico());
    print(hookMethod1());
  }
}

class BancoSql extends AbstractClass {
  String detalhesEspecifico() =>
      'BancoSql says: Implementado detalhesEspecifico';

  void efetuarConsulta() {
    print('BancoSql says: I am doing the bulk of the work');
    print(detalhesEspecifico());
    print(hookMethod1());
  }
}

class BancoOracle extends AbstractClass {
  String detalhesEspecifico() =>
      'BancoOracle says: Implementado detalhesEspecifico';
  void efetuarConsulta() {
    print('BancoOracle says: I am doing the bulk of the work');
    print(detalhesEspecifico());
    print(hookMethod1());
  }
}

void main() {
  final bancoSql = BancoSql();
  bancoSql.efetuarConsulta();

  final bancoOracle = BancoOracle();

  bancoOracle.efetuarConsulta();
}
