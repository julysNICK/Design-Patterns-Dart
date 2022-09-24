const adapterMethod = 'adapterMethod';

class Adaptee {
  String method1() {
    print('adaptee says: method1');

    return adapterMethod;
  }
}

abstract class Target {
  String call();
}

class Adapter extends Target {
  String call() {
    final adaptee = Adaptee();
    final result = adaptee.method1();

    return result;
  }
}

void main() {
  final adapter = Adapter();
  final result = adapter.call();

  print(result);
}
