import Foundation
// swift tempConverter.swift

class TempConverter {
    var tempInCelsius: Double
    var tempInFahrenheit: Double

    init(fromFahrenheit  tempInFahrenheit:Double){
        self.tempInFahrenheit = tempInFahrenheit
        self.tempInCelsius = ( (tempInFahrenheit - 32) * (5.0/9.0))
    }

    init(fromCelsius tempInCelsius: Double){
        self.tempInCelsius = tempInCelsius
        self.tempInFahrenheit = ( (tempInCelsius * 1.8) + 32 )
    }

    func showCelsiusTemp(){
        let roundedTemp = String(format: "%.2f", tempInCelsius) 
        print("Tempreature in Celsius: \(roundedTemp) °C")
    }

    func showFahrenheitTemp ()  {
        let roundedTemp = String(format: "%.2f", tempInFahrenheit)
        print("Tempreature in Fahrenheit: \(roundedTemp) °F")
        
    }
}

func userInput () -> Double? {
    print("Enter tempreatuer: ", terminator: " ")
    if let userTemp = readLine(), let temp = Double(userTemp) {
        return temp
    } else {
        print("Invalid tempreature is given by user.")
        return nil
    }
}

func scaleSelection() -> Double? {
    
    print("""
    Choose convertion method from below:
    1. Fahrenheit to Celsius
    2. Celsius to Fahrenheit
    """) 
    if let input = readLine(), let tempScale = Double(input){
        return tempScale
    } else {
        print("Kindly select from given option.")
        return nil
    }
}
    func mainFunction() {
    if let temp = userInput(), let tempScale = scaleSelection() {

        switch tempScale {

        case 1:    
        let object1 = TempConverter(fromFahrenheit:temp)
        object1.showCelsiusTemp()
        
        case 2:
        let object2 = TempConverter(fromCelsius:temp)
        object2.showFahrenheitTemp()
        
        default:
        print("Invalid selection of tempreature scale.")
    }
    }
}
mainFunction()