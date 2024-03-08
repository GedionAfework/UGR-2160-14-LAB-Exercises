class Product {
  String name;
  double price;
  int quantity;
  Product(this.name, this.price, this.quantity);
}
class ShoppingCart {
  List<Product> items = [];
  void addItem(String name, double price, int quantity) {
    Product newItem = Product(name, price, quantity);
    items.add(newItem);
    print('$quantity $name added to the cart.');
  }
  void removeItem(String name) {
    bool removed = false;
    items.removeWhere((product) {
      if (product.name == name) {
        removed = true;
        return true;
      }
      return false;
    });
    if (removed) {
      print('$name removed from the cart.');
    } else {
      print('$name not found in the cart.');
    }
  }
  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var product in items) {
      totalPrice += product.price * product.quantity;
    }
    return totalPrice;
  }
}
void main() {
  ShoppingCart cart = ShoppingCart();
  cart.addItem('Apple', 0.5, 5);
  cart.addItem('Banana', 0.3, 3);
  cart.addItem('Orange', 0.4, 2);
  double totalPrice = cart.calculateTotalPrice();
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');
  cart.removeItem('Banana');
  totalPrice = cart.calculateTotalPrice();
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');
}