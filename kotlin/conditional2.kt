fun main() {
    val hoursWorked = 45.0
    val hourlyRate = 20.0
    val totalSalary = Salary(hoursWorked, hourlyRate)
    println("Total Salary: $$totalSalary")
}

fun Salary(hoursWorked: Double, hourlyRate: Double): Double {
    val regularHours = 40
    val overtimeRate = 1.5
    if (hoursWorked <= regularHours) {
        return hoursWorked * hourlyRate
    } 
    else {
        val overtimeHours = hoursWorked - regularHours
        (regularHours * hourlyRate) + (overtimeHours * hourlyRate * overtimeRate)
    }
}
