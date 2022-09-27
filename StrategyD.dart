abstract class CoffeeStrategy {
  String announce(String roast);
}

class AmericanoStrategy implements CoffeeStrategy {
  String announce(String roast) {
    return "I am an Americano made with $roast";
  }
}

class LatteStrategy implements CoffeeStrategy {
  String announce(String roast) {
    return "I am a Latte made with $roast";
  }
}

class CappuccinoStrategy implements CoffeeStrategy {
  String announce(String roast) {
    return "I am a Cappuccino made with $roast";
  }
}

class Coffee {
  CoffeeStrategy _strategy;
  Coffee(this._strategy);
  String announce(String roast) {
    return _strategy.announce(roast);
  }
}

void main() {
  Coffee coffee = new Coffee(new AmericanoStrategy());
  print(coffee.announce("dark roast"));
  coffee = new Coffee(new LatteStrategy());
  print(coffee.announce("medium roast"));
  coffee = new Coffee(new CappuccinoStrategy());
  print(coffee.announce("light roast"));
}
