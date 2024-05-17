fun main() {
    val start = 1 
    val end = 257   

    println("Prime numbers between $start and $end are:")
    var num = start

    while (num <= end) {
        if (isPrime(num)) {
            println(num)
        }
        num++
    }
}

// Function to check if a number is prime
fun isPrime(number: Int): Boolean {
    if (number <= 1) {
        return false
    }
    var divisor = 2
    while (divisor * divisor <= number) {
        if (number % divisor == 0) {
            return false
        }
        divisor++
    }
    return true
}
