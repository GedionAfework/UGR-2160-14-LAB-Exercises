class Product {
  String name;
  double price;
  int quantity;
  Product(this.name, this.price, this.quantity);
  double calculateTotalCost() {
    return price * quantity;
  }
}
void main() {
  Product product = Product("Shenkurt", 84.5, 10);
  print("Name: ${product.name}");
  print("Price: ${product.price}");
  print("Quantity: ${product.quantity}");
  double totalCost = product.calculateTotalCost();
  print("Total Cost: $totalCost");
}