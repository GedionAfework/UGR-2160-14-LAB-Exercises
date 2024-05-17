fun main() {
    val number = 123454321
    val isPalindrome = isPalindrome(number)
    if (isPalindrome) {
        println("$number is a palindrome")
    } else {
        println("$number is not a palindrome")
    }
}
fun isPalindrome(number: Int): Boolean {
    var reversedNumber = 0
    var originalNumber = number
    while (originalNumber > 0) {
        val digit = originalNumber % 10
        reversedNumber = reversedNumber * 10 + digit
        originalNumber /= 10
    }
    return number == reversedNumber
}
