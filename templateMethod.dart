abstract class AbstractClass {
  String abstractMethod1();
  String hookMethod1() =>
      'AbstractClass says: I am doing the bulk of the work hook';

  void templateMethod() {
    print('AbstractClass says: I am doing the bulk of the work');
    print(abstractMethod1());
    print(hookMethod1());
  }
}

class Concrete extends AbstractClass {
  String abstractMethod1() => 'ConcreteClass says: Implemented Operation1';
}

class ConcreteOverride extends AbstractClass {
  String abstractMethod1() => 'ConcreteOverride says: Implemented Operation1';

  @override
  String hookMethod1() => 'ConcreteOverride says: Overridden Hook1';
}

void main() {
  final concrete = Concrete();
  concrete.templateMethod();

  final concreteOverride = ConcreteOverride();

  concreteOverride.templateMethod();
}
