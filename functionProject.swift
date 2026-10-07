import Foundation
// swift functionProject.swift

func calculator(number1: Double, mathOperator: Int, number2: Double) -> Void {
    
    var total: Double = 0
    switch mathOperator {
    case 1:
     total = (number1 + number2)
    print("Sum is: ", total)
    case 2:
     total = (number1 - number2)
    print("Difference is: ", total)
    case 3:
     total = (number1 * number2)
    print("Multiplication is: ", total)
    case 4:
    if number2 != 0 {
     total = (number1 / number2)
    print("Division is: ", total)
    } else{
        print("Error! Division by zero is not allowed")
    }
    case 5:
    if number2 != 0 {
    total = number1.truncatingRemainder(dividingBy: number2)
    print("Reminder is: ", total)
    } else{
        print("Error! Modulo by zero is not allowed")
    }
    default:
    print("Invalid input!")
        
    }
    
}
    // Taking first number from user
print("Enter the first number: ", terminator: "")
guard let input1 = readLine(), let num1 = Double(input1) else {
    print("Invalid input for the first number.")
    exit(1)
}

    // Math operators choice for user to choose Arthmetic Operators
    print("""
1. Press 1 to find sum:
2. Press 2 to find difference:
3. Press 3 to find multiplication:
4. Press 4 to find division:
5. Press 5 to find reminder:
Enter your choice: 

""", terminator: "")
guard let arthmeticOperator = readLine(), let choice = Int(arthmeticOperator) else {
    print("Invalid Arthmetic operator choice. Take a look above")
    exit(1)
}

    // Taking second number from user
print("Enter the second number: ", terminator: "")
guard let input2 = readLine(), let num2 = Double(input2) else {
    print("Invalid input for the second number.")
    exit(1)
}

calculator(number1: num1, mathOperator: choice, number2: num2)

