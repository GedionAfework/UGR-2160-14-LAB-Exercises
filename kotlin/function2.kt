fun main() {
    val number = 5
    val result = factorial(number)
    println("The factorial of $number is $result")
}
fun factorial(n: Int): Int {
    return if (n <= 1) {
        1
    } else {
        n * factorial(n - 1)
    }
}
