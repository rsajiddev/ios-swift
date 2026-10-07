import Foundation
// swift foodmenu.swift
func foodMenu( ) -> Void {
    
    print("Welcome! Enjoy our deal")
    let menu1 = (product: "Burger", orignalPrice: 1500, discountRate: 0.05)
    let menu2 = (product: "Pizza", orignalPrice: 2500, discountRate: 0.35)
    let menu3 = (product: "Coffee", orignalPrice: 250, discountRate: 0.15)

// discount calculation //
let discountPrice1 = menu1.orignalPrice - Int(Double(menu1.orignalPrice) * menu1.discountRate)
let discountPrice2 = menu2.orignalPrice - Int(Double(menu2.orignalPrice) * menu2.discountRate)
let discountPrice3 = menu3.orignalPrice - Int(Double(menu3.orignalPrice) * menu3.discountRate)

    print("""
Menu:
1. \(menu1.product) - Original Price: \(menu1.orignalPrice) - Discounted Price: \(discountPrice1)
2. \(menu2.product) - Original Price: \(menu2.orignalPrice) - Discounted Price: \(discountPrice2)
3. \(menu3.product) - Original Price: \(menu3.orignalPrice) - Discounted Price: \(discountPrice3)
""")


    print("Enter menu tag no. to enjoy our service: ", terminator: " ")
    if let choice = readLine(), let menuChoice = Int(choice) {
    switch menuChoice {
    case 1:
    print("Order: \(menu1.product) \nOrignal Price: \(menu1.orignalPrice) RS \nDiscount Price: \(discountPrice1) RS")
    case 2:
    print("Order: \(menu2.product) \nOrignal Price: \(menu2.orignalPrice) RS \nDiscount Price: \(discountPrice2) RS")
    case 3:
    print("Order: \(menu3.product) \nOrignal Price: \(menu3.orignalPrice) RS \nDiscount Price: \(discountPrice3) RS")
    default:
    print("You ordered wrong menu tag number")
         }  
    } else {
    print("Invalid choice! Check the menu list tag number")
    exit(1)
}
}
foodMenu()

print("Do you want to order again?")
var orderChoice = readLine()
if let order = orderChoice, order.lowercased() == "Yes"{ 
    foodMenu()
} else {
    print("Thanks for order! Enjoy your meal")
    exit(1)
}
