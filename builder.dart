class Pizza_Product {
  String _mDough = '';
  String _mSauce = '';
  String _mTopping = '';

  void setDough(String dough) {
    _mDough = dough;
  }

  void setSauce(String sauce) {
    _mSauce = sauce;
  }

  void setTopping(String topping) {
    _mTopping = topping;
  }

  void taste() {
    print(
        'Pizza with $_mDough dough, $_mSauce sauce and $_mTopping topping. Mmm.');
  }
}

class PizzaBuilder {
  Pizza_Product _pizza = Pizza_Product();

  Pizza_Product getPizza() {
    return _pizza;
  }

  void createNewPizzaProduct() {
    _pizza = Pizza_Product();
  }

  void buildDough() {}

  void buildSauce() {}

  void buildTopping() {}
}

class MargheritaBuilder extends PizzaBuilder {
  @override
  void buildDough() {
    _pizza.setDough('cross');
  }

  @override
  void buildSauce() {
    _pizza.setSauce('mild');
  }

  @override
  void buildTopping() {
    _pizza.setTopping('ham+pineapple');
  }
}

class SpicyBuilder extends PizzaBuilder {
  @override
  void buildDough() {
    _pizza.setDough('pan baked');
  }

  @override
  void buildSauce() {
    _pizza.setSauce('hot');
  }

  @override
  void buildTopping() {
    _pizza.setTopping('pepperoni+salami');
  }
}

class Cook {
  PizzaBuilder _pizzaBuilder = PizzaBuilder();

  void setPizzaBuilder(PizzaBuilder pb) {
    _pizzaBuilder = pb;
  }

  Pizza_Product getPizza() {
    return _pizzaBuilder.getPizza();
  }

  void constructPizza() {
    _pizzaBuilder.createNewPizzaProduct();
    _pizzaBuilder.buildDough();
    _pizzaBuilder.buildSauce();
    _pizzaBuilder.buildTopping();
  }
}

void main() {
  final cook = Cook();
  final margheritaBuilder = MargheritaBuilder();
  final spicyBuilder = SpicyBuilder();

  cook.setPizzaBuilder(spicyBuilder);
  cook.constructPizza();

  final pizza = cook.getPizza();
  pizza.taste();
}
