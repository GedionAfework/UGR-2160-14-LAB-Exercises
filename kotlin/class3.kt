class ShoppingCart {
    private val items = mutableMapOf<String, Double>()
    fun addItem(itemName: String, price: Double) {
        items[itemName] = price
    }
    fun removeItem(itemName: String) {
        items.remove(itemName)
    }
    fun calculateTotalPrice(): Double {
        var totalPrice = 0.0
        for ((_, price) in items) {
            totalPrice += price
        }
        return totalPrice
    }
}

fun main() {
    val shoppingCart = ShoppingCart()
    shoppingCart.addItem("Shirt", 700)
    shoppingCart.addItem("Pants", 3599)
    shoppingCart.addItem("Shoes", 499.9)
    val totalPrice = shoppingCart.calculateTotalPrice()
    println("Total price of items in the shopping cart: $$totalPrice")
    shoppingCart.removeItem("Pants")
    val newTotalPrice = shoppingCart.calculateTotalPrice()
    println("Updated total price after removing an item: $$newTotalPrice")
}
