fun main() {
    val num1 = 10
    val num2 = 20
    val num3 = 15
    val largest = findLargest(num1, num2, num3)
    println("The largest number among $num1, $num2, and $num3 is $largest")
}
fun findLargest(a: Int, b: Int, c: Int): Int {
    return if (a > b) {
        if (a > c) {
            a
        } else {
            c
        }
    } else {
        if (b > c) {
            b
        } else {
            c
        }
    }
}
