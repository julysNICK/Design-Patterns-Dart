class SingletonExample {
  static SingletonExample _instance = new SingletonExample._internal();
  static SingletonExample get instance {
    if (_instance == null) {
      _instance = SingletonExample._internal();
    }
    return _instance;
  }

  SingletonExample._internal();
}

void main() {
  SingletonExample singletonExample = SingletonExample.instance;
  SingletonExample singletonExample2 = SingletonExample.instance;
  print(singletonExample == singletonExample2);
}
