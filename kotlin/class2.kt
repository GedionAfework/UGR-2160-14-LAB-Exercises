class Triangle(private val side1: Double, private val side2: Double, private val side3: Double) {
    fun isEquilateral(): Boolean {
        return side1 == side2 && side2 == side3
    }
    fun isIsosceles(): Boolean {
        return side1 == side2 || side1 == side3 || side2 == side3
    }
    fun isScalene(): Boolean {
        return !isEquilateral() && !isIsosceles()
    }
}

fun main() {
    val equilateralTriangle = Triangle(5.0, 5.0, 5.0)
    println("Equilateral Triangle: ${equilateralTriangle.isEquilateral()}")
    println("Isosceles Triangle: ${equilateralTriangle.isIsosceles()}")
    println("Scalene Triangle: ${equilateralTriangle.isScalene()}")
}
