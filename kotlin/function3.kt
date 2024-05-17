fun main() {
    val inputString1 = "abcdef"
    val inputString2 = "hello"
    val result1 = hasUniqueCharacters(inputString1)
    val result2 = hasUniqueCharacters(inputString2)
    println("The string \"$inputString1\" has all unique characters: $result1")
    println("The string \"$inputString2\" has all unique characters: $result2")
}
fun hasUniqueCharacters(str: String): Boolean {
    val charSet = mutableSetOf<Char>()
    for (char in str) {
        if (!charSet.add(char)) {
            return false
        }
    }
    return true
}
