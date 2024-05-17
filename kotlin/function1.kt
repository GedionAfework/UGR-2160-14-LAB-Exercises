fun main() {
    val numbers = arrayOf(5, 3, 8, 1, 2, 9, 4)
    println("Array before sorting: ${numbers.joinToString(", ")}")
    bubbleSort(numbers)
    println("Array after sorting: ${numbers.joinToString(", ")}")
}
fun bubbleSort(arr: Array<Int>) {
    val n = arr.size
    for (i in 0 until n - 1) {
        for (j in 0 until n - i - 1) {
            if (arr[j] > arr[j + 1]) {
                val temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
}
